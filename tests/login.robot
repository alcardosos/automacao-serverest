*** Settings ***
Resource         ../resources/main.robot
Test Setup       Acessar a página de login
Test Teardown    Fechar o navegador

*** Test Cases ***
#Necessário cadastrar a massa diáriamente antes do teste
Login correto como administrador
    [Tags]    CT01
    Dado que insiro minhas credenciais de administrador corretamente
    Quando clico em "Entrar"
    Então visualizo a tela de boas vindas

#Necessário cadastrar a massa diáriamente antes do teste
Login correto de usuário padrão
    [Tags]    CT02

    Dado que insiro minhas credenciais de usuário padrão
    Quando clico em "Entrar"
    Então visualizo a página de produtos

Login com credenciais em branco
    [Tags]    CT03

    Dado que clico em "Entrar" sem inserir minhas credenciais
    Então visualizo as mensagens de email e password obrigatórios

Login com credenciais inválidas
    [Tags]    CT04

    Dado que insiro credenciais com senha inválida
    Quando clico em "Entrar"
    Então visualizo a mensagem de email ou senha inválidos