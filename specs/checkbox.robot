*** Settings ***
Resource            ../Resources/base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão


*** Variables ***
${check_thor}       id:thor
${check_iron}       css:input[value="iron-man"]
${check_panther}    xpath://*[@id="checkboxes"]/input[7]


*** Test Cases ***
Deve validar o título da página
    Go To    ${url}/checkboxes
    Select Checkbox    ${check_thor}
    Checkbox Should Be Selected    ${check_thor}

Marcando opção com CSS Selector
    [Tags]    ironman
    Go To    ${url}/checkboxes
    Select Checkbox    ${check_iron}
    Checkbox Should Be Selected    ${check_iron}

Marcando opção com Xpath
    [Tags]    blackpanther
    Go To    ${url}/checkboxes
    Select Checkbox    ${check_panther}
    Checkbox Should Be Selected    ${check_panther}
