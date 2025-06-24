*** Settings ***
Resource    ../main.robot

*** Variables ***
${PESQUISA_PRODUTO}               xpath=//input[@data-testid='pesquisar']
${BOTAO_PESQUISAR_PRODUTO}        xpath=//button[@data-testid='botaoPesquisar']
${DETALHES}                       xpath=//a[@class='card-link' and text()='Detalhes'] 
${BOTAO_ADICIONAR_NA_LISTA}       xpath=//button[@data-testid='adicionarNaLista']
${BOTAO_LIMPAR_LISTA}             xpath=//button[@data-testid='limparLista']
${BOTAO_ADICIONAR_AO_CARRINHO}    xpath=//button[@data-testid='adicionar carrinho']

*** Keywords ***
Dado que insiro um nome de produto cadastrado
    Wait Until Element Is Visible    ${PESQUISA_PRODUTO}
    Input Text                       ${PESQUISA_PRODUTO}    s23

Quando clico no botão "Pesquisar"
    Click Button    ${BOTAO_PESQUISAR_PRODUTO} 

Então visualizo o produto pesquisado
    Wait Until Page Contains    s23

Dado que insiro um nome de produto não cadastrado
    Wait Until Element Is Visible    ${PESQUISA_PRODUTO}
    Input Text                       ${PESQUISA_PRODUTO}    Playstation 5

Então visualizo a mensagem de nenhum produto foi encontrado
    Wait Until Page Contains    Nenhum produto foi encontrado

E clico "Detalhes" no card do produto 
    Wait Until Element Is Visible    ${DETALHES}
    Click Element                    ${DETALHES}   

Então visualizo a página de detalhes do produto
    Wait Until Page Contains    Detalhes do produto

E clico em "Adicionar a lista"
    Wait Until Element Is Visible    ${BOTAO_ADICIONAR_NA_LISTA}
    Click Button                     ${BOTAO_ADICIONAR_NA_LISTA}

Então visualizo a página de lista de compras
    Wait Until Page Contains    Lista de Compras

Dado que busco por um produto cadastrado
    Wait Until Element Is Visible    ${PESQUISA_PRODUTO}
    Input Text                       ${PESQUISA_PRODUTO}    s23
    Click Button                     ${BOTAO_PESQUISAR_PRODUTO}

Quando clico em "Adicionar a lista"
    Wait Until Element Is Visible    ${BOTAO_ADICIONAR_NA_LISTA}
    Click Button                     ${BOTAO_ADICIONAR_NA_LISTA}

E clico em "Limpar Lista"
    Click Button    ${BOTAO_LIMPAR_LISTA} 

Então visualizo a mensagem de seu carrinho está vazio
    Wait Until Page Contains    Seu carrinho está vazio

E clico em "Adicionar ao carrinho"
    Click Button    ${BOTAO_ADICIONAR_AO_CARRINHO}

Então visualizo a mensagem de Em construção, aguarde
    Wait Until Page Contains    Em construção aguarde