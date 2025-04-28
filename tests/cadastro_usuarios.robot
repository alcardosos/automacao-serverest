*** Settings ***
Resource         ../resources/main.robot
Resource         ../resources/pages/pagina_cadastro_usuarios.robot
Test Setup       Acessar a página de login
Test Teardown    Fechar o navegador

*** Test Cases ***
Cadastro de usuário administrador
    Dado que estou logado sendo administrador
    Quando clico em "Cadastrar" no card de cadastro de usuários
    E submeto os dados corretamernte
    E marco o checkbox de cadastrar como administrador
    E clico em "Cadastrar"
    Então visualizo a página de lista dos usuários

Cadastro de usuário padrão
    Dado que estou logado sendo administrador
    Quando clico em "Cadastrar" no card de cadastro de usuários
    E submeto os dados corretamernte
    E clico em "Cadastrar"
    Então visualizo a página de lista dos usuários

Cadastro de usuário com os campos em branco
    Dado que estou logado sendo administrador
    Quando clico em "Cadastrar" no card de cadastro de usuários
    E clico em "Cadastrar"
    Então visualizo as mensagens de campos obrigatórios

Cadastro de usuário com email inválido
    Dado que estou logado sendo administrador
    Quando clico em "Cadastrar" no card de cadastro de usuários
    E submeto meu cadastro com um email sem ".com"
    E clico em "Cadastrar"
    Então visualizo a mensagem de que o email deve ser válido
    
*** Keywords ***
E submeto meu cadastro com um email sem ".com"
    ${Nome}    FakerLibrary.Name
    Input Text    ${CADASTRO_NOME}    ${Nome}
    Input Text    ${CADASTRO_EMAIL}    email@invalido
    Input Password    ${CADASTRO_SENHA}    Teste123