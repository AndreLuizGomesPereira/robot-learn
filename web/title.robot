*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Deve validar o título da página
    Open Browser    http://training-wheels-protocol.herokuapp.com/    firefox
    Title Should Be    Training Wheels Protocol
    Close Browser