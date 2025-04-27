*** Settings ***
Resource    ../main.robot
Resource    ../pages/pagina_cadastro.robot
Resource    ../pages/pagina_login.robot

*** Keywords ***
Acessar a página de cadastro
    Open Browser    ${URL_CADASTRO}    browser=Chrome

Acessar a página de login
    Open Browser    ${URL_LOGIN}     browser=Chrome

Fechar o navegador
    Close Browser