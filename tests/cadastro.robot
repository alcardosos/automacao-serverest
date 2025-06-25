*** Settings ***
Resource         ../resources/main.robot
Test Setup       Acessar a página de cadastro
Test Teardown    Fechar o navegador

*** Test Cases ***
Cadastro correto como administrador
    [Tags]    CT01

    Dado que submeto todos os dados corretamente
    Quando clico no checkbox de "Cadastrar como administrador?"
    E clico em "Cadastrar"
    Então sou direcionado à tela de boas vindas

Cadastro correto usuário padrão
    [Tags]    CT02

    Dado que submeto todos os dados corretamente
    Quando clico em "Cadastrar"
    Então sou direcionado à página de produtos

Cadastro com dados em branco
    [Tags]    CT03

    Dado que clico em "Cadastrar" sem preencher nenhum dos campos
    Então visualizo as mensagens de campos obrigatórios

Cadastro com email inválido
    [Tags]    CT04

    Dado que submeto meu cadastro com um email sem ".com"
    Quando clico em "Cadastrar"
    Então visualizo a mensagem de que o email deve ser válido