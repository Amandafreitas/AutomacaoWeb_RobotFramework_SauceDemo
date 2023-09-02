*** Settings ***
Resource    ../main.robot


*** Keywords ***
Acessar pagina de login
    Open Browser    ${geral.URL}    ${geral.Browser} options=add_experimental_option("detach", True)
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot
    Close Browser
