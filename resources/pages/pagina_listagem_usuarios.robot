*** Settings ***
Resource    ../main.robot

*** Variables ***
${LOGIN_EMAIL}              id:email
${LOGIN_SENHA}              id:password
${BOTAO_ENTRAR}             xpath=//button[text()='Entrar']
${BOTAO_LISTAR_USUARIOS}    xpath=//div[@class='card-body']//a[@data-testid='listarUsuarios']

*** Keywords ***
Dado que estou logado como administrador
    Input Text        ${LOGIN_EMAIL}    alcardosos@hotmail.com
    Input Password    ${LOGIN_SENHA}     Teste123
    Click Button      ${BOTAO_ENTRAR}

Quando clico em "Listar" no card de listagem de usuários
    Wait Until Element Is Visible    ${BOTAO_LISTAR_USUARIOS}
    Click Element                    ${BOTAO_LISTAR_USUARIOS}

Então visualizo a página de usuários cadastrados
    Page Should Contain    Lista dos usuários