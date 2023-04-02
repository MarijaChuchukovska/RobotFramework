*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1_dropdown_menu
    Open Browser    http://localhost/chuchukovska/robot.html    chrome
    Select From List By Index    name:months    5
    Select From List By Label    name:days    17
    Select From List By Value    name:year    17
