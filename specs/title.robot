*** Settings ***
Resource            ../Resources/base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão


*** Test Cases ***
Deve validar o título da página
    Title Should Be    Training Wheels Protocol
