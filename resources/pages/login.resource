*** Settings ***
Resource    ../main.robot

*** Keywords ***
Dado que insiro minhas credenciais de administrador corretamente
    Input Text        ${LOGIN_EMAIL}     teste@admin.com
    Input Password    ${LOGIN_SENHA}     Adm@teste123

Quando clico em "Entrar"
    Click Button    ${BOTAO_ENTRAR}

Então visualizo a tela de boas vindas
    Wait Until Page Contains    Bem Vindo

Dado que insiro minhas credenciais de usuário padrão
    Input Text        ${LOGIN_EMAIL}    teste@user.com
    Input Password    ${LOGIN_SENHA}    User@teste123

Então visualizo a página de produtos
    Wait Until Page Contains    Serverest Store

Dado que clico em "Entrar" sem inserir minhas credenciais
    Click Button    ${BOTAO_ENTRAR}

Então visualizo as mensagens de email e password obrigatórios
    Wait Until Page Contains    Email é obrigatório
    Wait Until Page Contains    Password é obrigatório

Dado que insiro credenciais com senha inválida
    Input Text        ${LOGIN_EMAIL}    alcardosos@hotmail.com
    Input Password    ${LOGIN_SENHA}    teste123

Então visualizo a mensagem de email ou senha inválidos
    Wait Until Page Contains    Email e/ou senha inválidos