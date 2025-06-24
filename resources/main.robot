*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    FakerLibrary    locale=pt_BR
Library    Screenshot

Resource    shared/setup_teardown.robot
Resource    ./pages/cadastro.resource
Resource    ./pages/pagina_login.robot
Resource    ./pages/cadastro_usuarios.resource
Resource    ./pages/cadastrar_produtos.resource
Resource    ./pages/pagina_listagem_usuarios.robot
Resource    ./pages/pagina_listagem_produtos.robot
Resource    ./pages/pagina_relatorios.robot
Resource    ./pages/pagina_comprar_produto.robot