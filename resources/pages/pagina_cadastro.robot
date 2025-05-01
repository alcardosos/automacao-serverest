*** Settings ***
Resource    ../main.robot

*** Variables ***
${URL_CADASTRO}       https://front.serverest.dev/cadastrarusuarios
${CADASTRO_NOME}      id:nome
${CADASTRO_EMAIL}     id:email
${CADASTRO_SENHA}     id:password
${CHECKBOX_ADM}       id:administrador
${BOTAO_CADASTRAR}    xpath=//button[text()='Cadastrar']

*** Keywords ***
Dado que submeto todos os dados corretamente
    ${Nome}           FakerLibrary.Name
    Input Text        ${CADASTRO_NOME}    ${Nome}
    ${Email}          FakerLibrary.Email
    Input Text        ${CADASTRO_EMAIL}    ${Email}
    Input Password    ${CADASTRO_SENHA}    Teste123

Quando clico no checkbox de "Cadastrar como administrador?"
    Click Element    ${CHECKBOX_ADM} 

E clico em "Cadastrar"
    Wait Until Element Is Visible    ${BOTAO_CADASTRAR}
    Click Button                     ${BOTAO_CADASTRAR}

Então sou direcionado à tela de boas vindas
    Wait Until Page Contains    Bem Vindo 

Quando clico em "Cadastrar"
    Wait Until Element Is Visible    ${BOTAO_CADASTRAR}
    Click Button                     ${BOTAO_CADASTRAR}

Então sou direcionado à página de produtos
    Wait Until Page Contains    Serverest Store

Dado que clico em "Cadastrar" sem preencher nenhum dos campos
    Wait Until Element Is Visible    ${BOTAO_CADASTRAR}
    Click Element                    ${BOTAO_CADASTRAR}

Então visualizo as mensagens de campos obrigatórios
    Wait Until Page Contains    Nome é obrigatório
    Wait Until Page Contains    Email é obrigatório
    Wait Until Page Contains    Password é obrigatório

Dado que submeto meu cadastro com um email sem ".com"
    ${Nome}           FakerLibrary.Name
    Input Text        ${CADASTRO_NOME}    ${Nome}
    Input Text        ${CADASTRO_EMAIL}    email@incorreto
    Input Password    ${CADASTRO_SENHA}    Teste123

Então visualizo a mensagem de que o email deve ser válido
    Wait Until Page Contains    Email deve ser um email válido