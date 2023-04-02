*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://magento.softwaretestingboard.com/
${browser}        chrome

*** Test Cases ***
TC_web_testing
    Set Selenium Speed    1
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element    xpath://header/div[1]/div[1]/ul[1]/li[3]/a[1]
    Input Text    id:firstname    Luiza
    Input Text    id:lastname    Lopez
    Input Text    id:email_address    luizalopez@gmail.com
    Input Text    id:password    Luizalopez1234
    Input Text    id:password-confirmation    Luizalopez1234
    Click Button    xpath://body/div[1]/main[1]/div[3]/div[1]/form[1]/div[1]/div[1]/button[1]
    Mouse Over    id:ui-id-4
    Mouse Over    id:ui-id-9
    Click element    id:ui-id-13
    Click Element    xpath://a[contains(text(),'Desiree Fitness Tee')]
    Click Element    xpath://div[@id='option-label-size-143-item-169']
    Click Element    xpath://div[@id='option-label-color-93-item-49']
    Input Text    id:qty    2
    Click Button    xpath://button[@id='product-addtocart-button']
    Click Element    xpath://html/body/div[1]/header/div[2]/div[1]/a
    Click Element    xpath://html/body/div[1]/header/div[2]/div[1]/a
    Click Element    xpath:/html/body/div[1]/header/div[2]/div[1]/div/div/div/div[2]/div[3]/div/button
    Close Browser

TC2
    Set Selenium Speed    1
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Mouse Over    id:ui-id-4
    Mouse Over    id:ui-id-9
    Click element    id:ui-id-13
    Click Element    xpath://a[contains(text(),'Desiree Fitness Tee')]
    Click Element    xpath://div[@id='option-label-size-143-item-169']
    Click Element    xpath://div[@id='option-label-color-93-item-49']
    Input Text    id:qty    2
    Click Button    xpath://button[@id='product-addtocart-button']
    Click Element    xpath://html/body/div[1]/header/div[2]/div[1]/a
    Click Element    xpath://html/body/div[1]/header/div[2]/div[1]/a
    Click Element    xpath:/html/body/div[1]/header/div[2]/div[1]/div/div/div/div[2]/div[3]/div/button
