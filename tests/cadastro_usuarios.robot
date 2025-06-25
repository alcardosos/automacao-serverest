*** Settings ***
Resource         ../resources/main.robot
Test Setup       Login de administrador
Test Teardown    Fechar o navegador

*** Test Cases ***
Cadastro de usuário administrador
    [Tags]    CT01

    Dado que clico em "Cadastrar" no card de cadastro de usuários
    Quando submeto os dados corretamernte
    E marco o checkbox de cadastrar como administrador
    E clico em "Cadastrar"
    Então visualizo a página de lista dos usuários

Cadastro de usuário padrão
    [Tags]    CT02

    Dado que clico em "Cadastrar" no card de cadastro de usuários
    Quando submeto os dados corretamernte
    E clico em "Cadastrar"
    Então visualizo a página de lista dos usuários

Cadastro de usuário com os campos em branco
    [Tags]    CT03
    
    Dado que clico em "Cadastrar" no card de cadastro de usuários
    Quando clico em "Cadastrar"
    Então visualizo as mensagens de campos obrigatórios

Cadastro de usuário com email inválido
    [Tags]    CT04
    Dado que clico em "Cadastrar" no card de cadastro de usuários
    Quando submeto um cadastro com um email sem ".com"
    E clico em "Cadastrar"
    Então visualizo a mensagem de que o email deve ser válido