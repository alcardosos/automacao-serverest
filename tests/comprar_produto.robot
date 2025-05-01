*** Settings ***
Resource         ../resources/main.robot
Resource         ../resources/pages/pagina_comprar_produto.robot
Test Setup       Login usuário padrão
Test Teardown    Fechar o navegador

*** Test Cases ***
Pesquisar produto cadastrado
    Dado que insiro um nome de produto cadastrado
    Quando clico no botão "Pesquisar"
    Então visualizo o produto pesquisado

Pesquisar produto não cadastrado
    Dado que insiro um nome de produto não cadastrado
    Quando clico no botão "Pesquisar"
    Então visualizo a mensagem de nenhum produto foi encontrado

Acessar detalhes do produtos
    Dado que insiro um nome de produto cadastrado
    Quando clico no botão "Pesquisar"
    E clico "Detalhes" no card do produto 
    Então visualizo a página de detalhes do produto

Adicionar produto à lista
    Dado que insiro um nome de produto cadastrado
    Quando clico no botão "Pesquisar"
    E clico "Detalhes" no card do produto 
    E clico em "Adicionar a lista"
    Então visualizo a página de lista de compras

Limpar lista de produtos
    Dado que busco por um produto cadastrado
    Quando clico em "Adicionar a lista"
    E clico em "Limpar Lista"
    Então visualizo a mensagem de seu carrinho está vazio

Adicionar produtos ao carrinho
    Dado que busco por um produto cadastrado
    Quando clico em "Adicionar a lista"
    E clico em "Adicionar ao carrinho"
    Então visualizo a mensagem de Em construção, aguarde