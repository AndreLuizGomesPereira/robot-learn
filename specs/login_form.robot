*** Settings ***
Resource            ../Resources/base.robot
Resource            ../pages/Login.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão


*** Test Cases ***
Login com sucesso
    Go To    ${url}/login
    Login With    stark    jarvis!
    Page Should Contain    Olá, Tony Stark. Você acessou a área logada!

Login inválido
    Go To    ${url}/login
    Login With    stark    senhaincorreta

    ${message}=    Get WebElement    id:flash
    Should Contain    ${message.text}    Senha é invalida!

Usuário não existe
    Go To    ${url}/login
    Login With    andre    jarvis!

    ${message}=    Get WebElement    id:flash
    Should Contain    ${message.text}    O usuário informado não está cadastrado!
