*** Settings ***
Library          SeleniumLibrary
Resource         setup_teardown.robot
Test Setup       Dado que acesse o Swag Labs
Test Teardown    Fechar o navegador

*** Variables ***
${BOTAO_LOGIN}                          id:login-button
${Username Required Message Locator}    css=div.error-message-container


*** Test Cases ***
Verificar se quando um campo obrigatório não for preenchido corretamente o sistema exibe uma mensagem de campo obrigatório
    Dado que clique no botão de login
    Então o navegador deve apresentar mensagem de campo obrigatório

*** Keywords ***
Dado que clique no botão de login
    Click Element    ${BOTAO_LOGIN}

Então o navegador deve apresentar mensagem de campo obrigatório
    Element Should Be Visible    ${Username Required Message Locator}   
    