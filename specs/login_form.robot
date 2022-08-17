*** Settings ***
Resource            ../Resources/base.robot
Library             XML

Test Setup          Nova sessão
Test Teardown       Encerra sessão


*** Test Cases ***
Login com sucesso
    Go To    ${url}/login
    Input Text    css:input[name=username]    stark
    Input Text    css:input[name=password]    jarvis!
    Click Element    class:btn-login
    Page Should Contain    Olá, Tony Stark. Você acessou a área logada!

Login inválido
    Go To    ${url}/login
    Input Text    css:input[name=username]    stark
    Input Text    css:input[name=password]    senhaincorreta
    Click Element    class:btn-login

    ${message}=    Get WebElement    id:flash
    Should Contain    ${message.text}    Senha é invalida!

Usuário não existe
    Go To    ${url}/login
    Input Text    css:input[name=username]    andré
    Input Text    css:input[name=password]    senhaincorreta
    Click Element    class:btn-login

    ${message}=    Get WebElement    id:flash
    Should Contain    ${message.text}    O usuário informado não está cadastrado!
