*** Settings ***
Resource         ../resources/main.robot
Resource         ../resources/pages/pagina_login.robot
Test Setup       Acessar a página de login
Test Teardown    Fechar o navegador

*** Test Cases ***
Login correto como administrador
    Dado que insiro minhas credenciais de administrador corretamente
    Quando clico em "Entrar"
    Então visualizo a tela de boas vindas

Login correto de usuário padrão
    Dado que insiro minhas credenciais de usuário padrão
    Quando clico em "Entrar"
    Então visualizo a página de produtos

Login com credenciais em branco
    Dado que clico em "Entrar" sem inserir minhas credenciais
    Então visualizo as mensagens de email e password obrigatórios

Login com credenciais inválidas
    Dado que insiro credenciais com senha inválida
    Quando clico em "Entrar"
    Então visualizo a mensagem de email ou senha inválidos