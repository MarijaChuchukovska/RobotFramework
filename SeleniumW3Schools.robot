*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    https://www.w3schools.com/    Chrome
    Sleep    2
    Maximize Browser Window
    Input Text    id:search2    Learn HTML
    Click Button    id:learntocode_searchbtn

TC2_css
    Open Browser    https://www.w3schools.com/html/default.asp    Chrome
    Maximize Browser Window
    Sleep    2
    Click Element    xpath://html/body/div[4]/div/div[1]/a[4]
    sleep    2

TC3_javascript
    Open Browser    https://www.w3schools.com/html/default.asp    Chrome
    sleep    2
    Maximize Browser Window
    Sleep    2
    Click Element    xpath://html/body/div[4]/div/div[1]/a[5]

TC4_sql
    Open Browser    https://www.w3schools.com/html/default.asp    Chrome
    Maximize Browser Window
    sleep    2
    Click Element    xpath://html/body/div[4]/div/div[1]/a[6]
    Sleep    2
    Close Browser

TC5_pyton
    Open Browser    https://www.w3schools.com/html/default.asp    chrome
    sleep    2
    Maximize Browser Window
    Sleep    2
    Click Element    xpath://html/body/div[4]/div/div[1]/a[7]
    Sleep    2
    Close Browser

TC6_java
    Open Browser    https://www.w3schools.com/html/default.asp    chrome
    sleep    2
    Maximize Browser Window
    sleep    2
    click element    xpath://html/body/div[4]/div/div[1]/a[8]
    sleep    2
    close browser

TC7_php
    Open Browser    https://www.w3schools.com/html/default.asp    chrome
    sleep    2
    Maximize Browser Window
    sleep    2
    click element    xpath://html/body/div[4]/div/div[1]/a[9]
    sleep    2
    close browser

TC8_bootstrap
    Open Browser    https://www.w3schools.com/html/default.asp    chrome
    sleep    2
    Maximize Browser Window
    sleep    2
    click element    xpath://html/body/div[4]/div/div[1]/a[10]
    sleep    2
    close browser

TC9_howto
    Open Browser    https://www.w3schools.com/html/default.asp    chrome
    Maximize Browser Window
    sleep    2
    click element    xpath://html/body/div[4]/div/div[1]/a[11]
    sleep    2
    close browser

TC10_w3css
    Open Browser    https://www.w3schools.com/html/default.asp    chrome
    Maximize Browser Window
    Sleep    2
    Click Element    xpath://html/body/div[4]/div/div[1]/a[12]
    Sleep    2
    Close Browser

TC11_C
    Open Browser    https://www.w3schools.com/html/default.asp    chrome
    Maximize Browser Window
    Sleep    2
    Click Element    xpath://html/body/div[4]/div/div[1]/a[13]
    Sleep    2
    Close Browser

TC12_C++
    Open Browser    https://www.w3schools.com/html/default.asp    chrome
    Maximize Browser Window
    Sleep    2
    Click Element    xpath://html/body/div[4]/div/div[1]/a[14]
    Sleep    2
    Close Browser
