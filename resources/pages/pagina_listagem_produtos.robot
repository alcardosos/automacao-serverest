*** Settings ***
Resource    ../main.robot

*** Variables ***
${BOTAO_LISTAR_PRODUTOS}    xpath=//div[@class='card-body']//a[@data-testid='listarProdutos']

*** Keywords ***
Dado que clico em "Listar" no card de listar produtos 
    Wait Until Element Is Visible    ${BOTAO_LISTAR_PRODUTOS} 
    Click Element                    ${BOTAO_LISTAR_PRODUTOS}