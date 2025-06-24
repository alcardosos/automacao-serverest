*** Settings ***
Resource         ../resources/main.robot
Test Setup       Login de administrador
Test Teardown    Fechar o navegador

*** Test Cases ***
Cadastro de produto
    Dado que acesso na página de cadastro de produtos
    Quando submeto os dados corretamente
    E clico em "Cadastrar"
    Então visualizo a página de listagem de produtos

Cadastro de produtos sem os dados obrigatórios
    Dado que acesso na página de cadastro de produtos
    Quando clico em "Cadastrar"
    Então visualizo as mensagens de campos obrigatórios para cadastro de prtodutos