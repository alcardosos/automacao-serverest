*** Settings ***
Resource         ../resources/main.robot
Resource         ../resources/pages/pagina_cadastro.robot
Test Setup       Acessar a página de cadastro
Test Teardown    Fechar o navegador

*** Test Cases ***
Cadastro correto como administrador
    Dado que submeto todos os dados corretamente
    Quando clico no checkbox de "Cadastrar como administrador?"
    E clico em "Cadastrar"
    Então sou direcionado à tela de boas vindas

Cadastro correto usuário padrão
    Dado que submeto todos os dados corretamente
    Quando clico em "Cadastrar"
    Então sou direcionado à página de produtos

Cadastro com dados em branco
    Dado que clico em "Cadastrar" sem preencher nenhum dos campos
    Então visualizo as mensagens de campos obrigatórios

Cadastro com email inválido
    Dado que submeto meu cadastro com um email sem ".com"
    Quando clico em "Cadastrar"
    Então visualizo a mensagem de que o email deve ser válido