*** Settings ***
Resource    ../main.robot

*** Variables ***
${LOGIN_EMAIL}    id:email
${LOGIN_SENHA}    id:password
${BOTAO_ENTRAR}    xpath=//button[text()='Entrar']
${BOTAO_CADASTRAR_USUARIOS}    xpath=//div[@class='card-body']//a[@data-testid='cadastrarUsuarios']
${CADASTRO_NOME}    id:nome
${CADASTRO_EMAIL}    id:email
${CADASTRO_SENHA}    id:password
${CHECKBOX_ADM}    id:administrador
${BOTAO_CADASTRAR}    xpath=//button[text()='Cadastrar']

*** Keywords ***
Dado que estou logado sendo administrador
    Input Text    ${LOGIN_EMAIL}    alcardosos@hotmail.com
    Input Password    ${LOGIN_SENHA}     Teste123
    Click Button    ${BOTAO_ENTRAR}
    Sleep    2s

Quando clico em "Cadastrar" no card de cadastro de usuários
    Click Element    ${BOTAO_CADASTRAR_USUARIOS}

E submeto os dados corretamernte
    ${Nome}    FakerLibrary.Name
    Input Text    ${CADASTRO_NOME}    ${Nome}
    ${Email}    FakerLibrary.Email
    Input Text    ${CADASTRO_EMAIL}    ${Email}
    Input Password    ${CADASTRO_SENHA}    Teste123

E marco o checkbox de cadastrar como administrador
    Click Element    ${CHECKBOX_ADM}

Então visualizo a página de lista dos usuários
    Page Should Contain    Lista dos usuários