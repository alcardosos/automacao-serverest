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

*** Variables ***
${URL_LOGIN}          https://front.serverest.dev/login
${LOGIN_EMAIL}        id:email
${LOGIN_SENHA}        id:password
${BOTAO_ENTRAR}       xpath=//button[text()='Entrar']

${URL_CADASTRO}       https://front.serverest.dev/cadastrarusuarios
${CADASTRO_NOME}      id:nome
${CADASTRO_EMAIL}     id:email
${CADASTRO_SENHA}     id:password
${CHECKBOX_ADM}       id:administrador
${BOTAO_CADASTRAR}    xpath=//button[text()='Cadastrar']