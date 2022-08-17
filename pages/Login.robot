*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Login With
    [Arguments]    ${username}    ${password}
    Input Text    css:input[name=username]    ${username}
    Input Text    css:input[name=password]    ${password}
    Click Element    class:btn-login
