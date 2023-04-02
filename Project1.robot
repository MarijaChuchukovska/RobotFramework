*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1_open browser
    Open Browser    https://robotframework.org/    chrome
    Close Browser
    Log To Console    Completed Successfully
