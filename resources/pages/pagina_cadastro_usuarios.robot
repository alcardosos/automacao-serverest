*** Settings ***
Resource    ../main.robot

*** Variables ***
${BOTAO_CADASTRAR_USUARIOS}    xpath=//div[@class='card-body']//a[@data-testid='cadastrarUsuarios']
${CADASTRO_NOME}               id:nome
${CADASTRO_EMAIL}              id:email
${CADASTRO_SENHA}              id:password
${CHECKBOX_ADM}                id:administrador
${BOTAO_CADASTRAR}             xpath=//button[text()='Cadastrar']

*** Keywords ***
Dado que clico em "Cadastrar" no card de cadastro de usuários
    Wait Until Element Is Visible    ${BOTAO_CADASTRAR_USUARIOS}
    Click Element                    ${BOTAO_CADASTRAR_USUARIOS}

Quando submeto os dados corretamernte
    ${Nome}           FakerLibrary.Name
    Input Text        ${CADASTRO_NOME}     ${Nome}
    ${Email}          FakerLibrary.Email
    Input Text        ${CADASTRO_EMAIL}    ${Email}
    Input Password    ${CADASTRO_SENHA}    Teste123

E marco o checkbox de cadastrar como administrador
    Click Element    ${CHECKBOX_ADM}

Então visualizo a página de lista dos usuários
    Wait Until Page Contains    Lista dos usuários

Quando submeto um cadastro com um email sem ".com"
    ${Nome}           FakerLibrary.Name
    Input Text        ${CADASTRO_NOME}     ${Nome}
    Input Text        ${CADASTRO_EMAIL}    email@invalido
    Input Password    ${CADASTRO_SENHA}    Teste123