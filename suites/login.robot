*** Settings ***
Resource            ../resources/main.robot

Test Teardown       Fechar navegador


*** Test Cases ***
CT01: Login com sucesso
    [Documentation]    Este teste verifica o login com um usuário válido padrão
    [Tags]    tc01, credenciais_validas
    Dado que estou na pagina de login
    Quando eu insiro as credenciais do usuário: ${login.standardUser} e ${login.password}
    E aperto enter
    Então eu devo ver a tela de inventário

CT02: Erro no Login
    [Documentation]    Este teste verifica o login com um usuário válido com problema
    [Tags]    tc02, credenciais_invalidas
    Dado que estou na pagina de login
    Quando eu insiro as credenciais do usuário: ${login.problemUser} e ${login.password}
    E aperto enter
    Então eu devo ver a tela de inventário

# CT02: Login com sucesso informando CPF no username
#    Dado que estou na pagina de login
#    Quando eu insiro o CPF e senha do usuário válida
#    E clico em entrar
#    Então o login é realizado e eu devo ser redirecionado para a pagina de autenticacao

# CT03: Login com usuário e senha válido utilizando a tecla TAB
#    Dado que estou na pagina de login
#    Quando eu insiro o nome e senha do usuário válida utilizando a tecla TAB
#    E aperto enter
#    Então o login é realizado e eu devo ser redirecionado para a pagina de autenticacao

# CT04: Login com usuário inválido
#    Dado que estou na pagina de login
#    Quando eu insiro o nome do usuário inválido e uma senha válida
#    E clico em entrar
#    Então deve ser exibida uma mensagem de dados incorretos

# CT05: Login com senha inválida
#    Dado que estou na pagina de login
#    Quando eu insiro o nome do usuário válido e uma senha inválida
#    E clico em entrar
#    Então deve ser exibida uma mensagem de dados incorretos

# CT04: Verificar se após realizar o login, é exibido a tela secreta de autorização do token
#    Dado que estou na pagina de login
#    Quando eu insiro o CPF e senha do usuário válida
#    E clico em entrar
#    Então o login é realizado e eu devo ser redirecionado para a pagina de autenticacao

# CT05: Login sem informar o nome do usuário
#    Dado que estou na pagina de login
#    Quando eu insiro uma senha válida
#    E clico em entrar
#    Então deve ser exibida uma mensagem de E-mail inválido

# CT06: Login sem informar a senha
#    Dado que estou na pagina de login
#    Quando eu insiro um login válido
#    E clico em entrar
#    Então deve ser exibida uma mensagem de Senha inválida
