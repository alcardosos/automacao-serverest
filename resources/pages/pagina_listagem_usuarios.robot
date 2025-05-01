*** Settings ***
Resource    ../main.robot

*** Variables ***
${BOTAO_LISTAR_USUARIOS}    xpath=//div[@class='card-body']//a[@data-testid='listarUsuarios']

*** Keywords ***
Dado que clico em "Listar" no card de listagem de usuários
    Wait Until Element Is Visible    ${BOTAO_LISTAR_USUARIOS}
    Click Element                    ${BOTAO_LISTAR_USUARIOS}

Então visualizo a página de usuários cadastrados
    Wait Until Page Contains    Lista dos usuários