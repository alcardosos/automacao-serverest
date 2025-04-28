*** Settings ***
Resource         ../resources/main.robot
Resource         ../resources/pages/pagina_listagem_produtos.robot
Test Setup       Login de administrador
Test Teardown    Fechar o navegador

*** Test Cases ***
Listagem de produtos cadastrados 
    Dado que clico em "Listar" no card de listar produtos 
    Então visualizo a página de listagem de produtos

*** Keywords ***
Dado que clico em "Listar" no card de listar produtos 
    Wait Until Element Is Visible    ${BOTAO_LISTAR_PRODUTOS} 
    Click Element                    ${BOTAO_LISTAR_PRODUTOS}