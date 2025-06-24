*** Settings ***
Resource         ../resources/main.robot
Test Setup       Login de administrador
Test Teardown    Fechar o navegador

*** Test Cases ***
Acesso aos relatórios
    Dado que clico em "Ver" no card de relatórios
    Então visualizo a mensagem de ainda em construção na página