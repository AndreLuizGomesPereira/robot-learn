*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}              http://training-wheels-protocol.herokuapp.com
${check_thor}       id:thor
${check_iron}       css:input[value="iron-man"]
${check_panther}    xpath://*[@id="checkboxes"]/input[7]


*** Test Cases ***
Deve validar o título da página
    Open Browser    ${url}    firefox
    Go To    ${url}/checkboxes
    Select Checkbox    ${check_thor}
    Checkbox Should Be Selected    ${check_thor}
    Close Browser

Marcando opção com CSS Selector
    [Tags]    ironman
    Open Browser    ${url}    firefox
    Go To    ${url}/checkboxes
    Select Checkbox    ${check_iron}
    Checkbox Should Be Selected    ${check_iron}
    Close Browser

Marcando opção com Xpath
    [Tags]    blackpanther
    Open Browser    ${url}    firefox
    Go To    ${url}/checkboxes
    Select Checkbox    ${check_panther}
    Checkbox Should Be Selected    ${check_panther}
    Close Browser
