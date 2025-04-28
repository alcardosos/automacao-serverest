*** Settings ***
Resource    ../main.robot

*** Variables ***
${BOTAO_CADASTRAR_PRODUTOS}    xpath=//div[@class='card-body']//a[@data-testid='cadastrarProdutos']
${NOME_PRODUTO}    id:nome 
${PRECO_PRODUTO}    id:price
${DESCRICAO_PRODUTO}    id:description
${QTD_PRODUTO}    id:quantity
${IMAGEM_PRODUTO}    id:imagem
${BOTAO_CADASTRAR_PRODUTO}    xpath=//button[text()='Cadastrar']

*** Keywords ***
Dado que acesso na página de cadastro de produtos
    Wait Until Element Is Visible   ${BOTAO_CADASTRAR_PRODUTOS}
    Click Element                   ${BOTAO_CADASTRAR_PRODUTOS}

Quando submeto os dados corretamente
    ${Nome}         FakerLibrary.Text
    Input Text      ${NOME_PRODUTO}    ${Nome}
    ${Preco}        FakerLibrary.Numerify
    Input Text      ${PRECO_PRODUTO}    ${Preco}
    ${Descricao}    FakerLibrary.Texts
    Input Text      ${DESCRICAO_PRODUTO}    ${Descricao} 
    Input Text      ${QTD_PRODUTO}    10

Então visualizo a página de listagem de produtos
    Wait Until Page Contains    Lista dos Produtos

Então visualizo as mensagens de campos obrigatórios para cadastro de prtodutos
    Page Should Contain    Nome é obrigatório
    Page Should Contain    Preco é obrigatório
    Page Should Contain    Descricao é obrigatório
    Page Should Contain    Quantidade é obrigatório