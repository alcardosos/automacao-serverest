*** Settings ***
Resource    ../main.robot

*** Variables ***
${URL_LOGIN}          https://front.serverest.dev/login
${LOGIN_EMAIL}    id:email
${LOGIN_SENHA}    id:password
${BOTAO_ENTRAR}    xpath=//button[text()='Entrar']

*** Keywords ***
Dado que insiro minhas credenciais de administrador corretamente
    Input Text    ${LOGIN_EMAIL}    alcardosos@hotmail.com
    Input Password    ${LOGIN_SENHA}     Teste123

Quando clico em "Entrar"
    Click Button    ${BOTAO_ENTRAR}
    Sleep    2s

Dado que insiro minhas credenciais de usuário padrão
    Input Text    ${LOGIN_EMAIL}    leo.almeida@gmail.com
    Input Password    ${LOGIN_SENHA}    Teste123

Dado que clico em "Entrar" sem inserir minhas credenciais
    Click Button    ${BOTAO_ENTRAR}
    Sleep    2s

Então visualizo as mensagens de email e password obrigatórios
    Page Should Contain    Email é obrigatório
    Page Should Contain    Password é obrigatório

Dado que insiro credenciais com senha inválida
    Input Text    ${LOGIN_EMAIL}    alcardosos@hotmail.com
    Input Password    ${LOGIN_SENHA}    teste123

Então visualizo a mensagem de email ou senha inválidos
    Page Should Contain    Email e/ou senha inválidos