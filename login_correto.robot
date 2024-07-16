*** Settings ***
Library          SeleniumLibrary
Resource         setup_teardown.robot
Test Setup       Dado que acesse o Swag Labs
Test Teardown    Fechar o navegador

*** Variables ***
${LOGIN}        id:user-name
${SENHA}        id:password
${BOTAO_LOGIN}  id:login-button

*** Test Cases ***
Verificar se ao preencher usar name e senha o login é realizado com sucesso
    Dado que preencha usar name e senha
    E clique no botão de login
    Então identificar se login foi realizado

*** Keywords ***
Dado que preencha usar name e senha
    Input Text    ${LOGIN}   standard_user
    Input Text    ${SENHA}   secret_sauce
    
E clique no botão de login
    Click Button    id:login-button

Então identificar se login foi realizado
    Element Should Be Visible    class:header_secondary_container
