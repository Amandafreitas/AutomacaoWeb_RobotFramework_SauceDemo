*** Settings ***
Resource    ../main.robot


*** Variables ***
&{USER}
# Dados válidos para login
...                                 standardUser = standard_user
...                                 lockedOutUser = locked_out_user
...                                 problemUser = problem_user
...                                 performanceGlitchUser = performance_glitch_user
...                                 password = secret_sauce
# Dados inválidos para o login
...                                 INVALID_USERNAME = }Zv9aqn#8X2@gmail.com
...                                 INVALID_PASSWORD = 12345678

&{LOGIN}
# Elementos da pagina de login
...                                 INPUT_USERNAME=//input[@id="user-name"]
...                                 INPUT_PASSWORD=//input[@id="password"]
...                                 BUTTON_ENTRAR=//input[@id="login-button"]
...                                 msg_erro_autenticacao=//p[contains(text(),"Dados incorretos. Digite novamente.")]
...                                 msg_email_invalido=//span[contains(text()," E-mail inválido")]
...                                 msg_senha_invalida=//span[contains(text()," Senha inválida")]


*** Keywords ***
Dado que estou na pagina de login
    Open Browser    ${GERAL.URL}    ${GERAL.Browser}

Quando eu insiro as credenciais do usuário: "${USERNAME}" e "${PASSWORD}"
    Wait Until Element Is Visible    ${LOGIN.INPUT_USERNAME}    5
    Input Text    ${LOGIN.INPUT_USERNAME}    ${USERNAME}
    Wait Until Element Is Visible    ${LOGIN.INPUT_PASSWORD}    5
    Input Text    ${LOGIN.INPUT_PASSWORD}    ${PASSWORD}

E clico em entrar
    Click Element    ${LOGIN.BUTTON_ENTRAR}

E aperto enter
    Press Keys    ${LOGIN.BUTTON_ENTRAR}    ENTER

#Então deve ser exibido uma mensagem de erro
#    ?
