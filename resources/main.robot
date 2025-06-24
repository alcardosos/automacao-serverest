*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    FakerLibrary    locale=pt_BR
Library    Screenshot

Resource    shared/setup_teardown.resource
Resource    ./pages/cadastro.resource
Resource    ./pages/login.resource
Resource    ./pages/cadastro_usuarios.resource
Resource    ./pages/cadastrar_produtos.resource
Resource    ./pages/listagem_usuarios.resource
Resource    ./pages/listagem_produtos.resource
Resource    ./pages/relatorios.resource
Resource    ./pages/comprar_produto.resource