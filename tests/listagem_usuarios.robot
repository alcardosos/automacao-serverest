*** Settings ***
Resource         ../resources/main.robot
Resource         ../resources/pages/pagina_listagem_usuarios.robot
Test Setup       Acessar a página de login
Test Teardown    Fechar o navegador

*** Test Cases ***
Listagem de usuários cadastrados
    Dado que estou logado como administrador
    Quando clico em "Listar" no card de listagem de usuários
    Então visualizo a página de usuários cadastrados