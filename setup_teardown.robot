*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Dado que acesse o Swag Labs
    Open Browser    browser= chrome     url=https://www.saucedemo.com

Fechar o navegador
    Close Browser