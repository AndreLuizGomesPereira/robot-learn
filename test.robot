*** Settings ***
Library     app.py


*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=    Welcome    André Luiz
    Should Be Equal    ${result}    Olá André Luiz, bem-vindo ao curso básico de Robot Framework!
