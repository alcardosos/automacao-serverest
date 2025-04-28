*** Settings ***
Resource    ../main.robot
Resource    ../pages/pagina_cadastro.robot
Resource    ../pages/pagina_login.robot
Resource    ../pages/pagina_cadastro_usuarios.robot
Resource    ../pages/pagina_cadastrar_produtos.robot
Resource    ../pages/pagina_listagem_usuarios.robot

*** Keywords ***
Acessar a página de cadastro
    Open Browser    ${URL_CADASTRO}    browser=Chrome

Acessar a página de login
    Open Browser    ${URL_LOGIN}     browser=Chrome

Login de administrador
    Open Browser      ${URL_LOGIN}     browser=Chrome
    Input Text        ${LOGIN_EMAIL}    alcardosos@hotmail.com
    Input Password    ${LOGIN_SENHA}     Teste123
    Click Button      ${BOTAO_ENTRAR}

Fechar o navegador
    Close Browser