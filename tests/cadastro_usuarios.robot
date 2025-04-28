*** Settings ***
Resource         ../resources/main.robot
Resource         ../resources/pages/pagina_cadastro_usuarios.robot
Test Setup       Login de administrador
Test Teardown    Fechar o navegador

*** Test Cases ***
Cadastro de usuário administrador
    Dado que clico em "Cadastrar" no card de cadastro de usuários
    Quando submeto os dados corretamernte
    E marco o checkbox de cadastrar como administrador
    E clico em "Cadastrar"
    Então visualizo a página de lista dos usuários

Cadastro de usuário padrão
    Dado que clico em "Cadastrar" no card de cadastro de usuários
    Quando submeto os dados corretamernte
    E clico em "Cadastrar"
    Então visualizo a página de lista dos usuários

Cadastro de usuário com os campos em branco
    Dado que clico em "Cadastrar" no card de cadastro de usuários
    Quando clico em "Cadastrar"
    Então visualizo as mensagens de campos obrigatórios

Cadastro de usuário com email inválido
    Dado que clico em "Cadastrar" no card de cadastro de usuários
    Quando submeto um cadastro com um email sem ".com"
    E clico em "Cadastrar"
    Então visualizo a mensagem de que o email deve ser válido