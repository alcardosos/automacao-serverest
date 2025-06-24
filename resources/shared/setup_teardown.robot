*** Settings ***
Resource    ../main.robot

*** Keywords ***
Acessar a página de cadastro
    Open Browser    ${URL_CADASTRO}    browser=Chrome

Acessar a página de login
    Open Browser    ${URL_LOGIN}     browser=Chrome

Login de administrador
    Open Browser      ${URL_LOGIN}       browser=Chrome
    Input Text        ${LOGIN_EMAIL}     teste@admin.com
    Input Password    ${LOGIN_SENHA}     Adm@teste123
    Click Button      ${BOTAO_ENTRAR}

Login usuário padrão
    Open Browser      ${URL_LOGIN}       browser=Chrome
    Input Text        ${LOGIN_EMAIL}     teste@user.com
    Input Password    ${LOGIN_SENHA}     User@teste123
    Click Button      ${BOTAO_ENTRAR}

Fechar o navegador
    Capture Page Screenshot
    Close Browser