*** Settings ***
Resource         ../resources/main.robot
Test Setup       Login de administrador
Test Teardown    Fechar o navegador

*** Test Cases ***
Listagem de produtos cadastrados
    Dado que clico em "Listar" no card de listar produtos 
    Então visualizo a página de listagem de produtos