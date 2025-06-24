*** Settings ***
Resource    ../main.robot

*** Variables ***
${BOTAO_VER_RELATORIOS}    xpath=//div[@class='card-body']//a[@data-testid='relatorios']

*** Keywords ***
Dado que clico em "Ver" no card de relatórios
    Wait Until Element Is Visible    ${BOTAO_VER_RELATORIOS}
    Click Element                    ${BOTAO_VER_RELATORIOS}

Então visualizo a mensagem de ainda em construção na página
    Wait Until Page Contains    Em construção aguarde