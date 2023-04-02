*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1_Pinterest_SingUp
    Open Browser    https://www.pinterest.com/    chrome
    Maximize Browser Window
    Set Selenium Speed    1
    Click element    xpath://html/body/div[1]/div/div[1]/div/div/div/div/div/div/div[1]/div/div/div[1]/div/div[2]/div[3]/button/div
    input text    id:email    marijaa@yahoo.com
    input text    id:password    marija123
    input text    id:age-input    34
    click element    xpath://html/body/div[1]/div/div[1]/div/div[2]/div/div/div/div/div[1]/div[5]/div/div[1]/form/div[8]/button/div
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[2]/div/div[2]/button
    Select Radio Button    genderOptions    female
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[2]/div/div[3]/button/div
    Select From List By Value    name:locale    en-US
    Select From List By Value    name:country    Republic of North Macedonia (Македонија)
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[3]/div/div[2]/button
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[3]/div/div[3]/div/div[1]/div/div/div/div/div/div/div[2]/div[1]
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[3]/div/div[3]/div/div[2]/div/div/div/div/div/div/div[2]/div[1]
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[3]/div/div[3]/div/div[3]/div/div/div/div/div/div/div[2]/div[1]
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[3]/div/div[3]/div/div[4]/div/div/div/div/div/div/div[2]/div[1]
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[3]/div/div[3]/div/div[5]/div/div/div/div/div/div/div[2]/div[1]
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[3]/div/div[4]/div[2]/button
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[3]/div/div[2]/button
    Close Browser

TC2_FB_SingUp
    Open Browser    https://www.facebook.com/    Chrome
    Maximize Browser Window
    Set Selenium Speed    1
    Click Element    xpath://html/body/div[1]/div[1]/div[1]/div/div/div/div[2]/div/div[1]/form/div[5]/a
    Input Text    name:firstname    maca
    Input Text    name:lastname    cucukovska
    Input Text    name:reg_email__    marija@yahoo.com
    Input Text    name:reg_email_confirmation__    marija@yahoo.com
    Input Text    name:reg_passwd__    marija2463
    Select From List By Value    id:month    4
    Select From List By Value    id:day    14
    Select From List By Value    id:year    1988
    Click element    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[7]/span/span[1]/label
    Click Button    name:websubmit

TC3_Twitter_SingUp
    Open Browser    https://twitter.com/    Chrome
    Maximize Browser Window
    Set Selenium Speed    1
    Click Element    xpath://html/body/div/div/div/div[1]/div/div[1]/div/div/div/div/div/div/div/div[2]/a
    wait until page contains    Join Twitter today
    Click Element    xpath://html/body/div/div/div/div[1]/div[2]/div/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div/div/div/div[5]
    Input text    name:name    Elisa
    Click element    xpath://html/body/div[1]/div/div/div[1]/div[2]/div/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div[1]/div/div[2]/div[3]/span
    input text    name:email    elisa.perez2463@yahoo.com
    Select From List By Value    id:SELECTOR_1    8
    Select From List By Value    id:SELECTOR_2    13
    Select From List By Value    id:SELECTOR_3    2010
    Click Element    xpath://html/body/div[1]/div/div/div[1]/div[2]/div/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div[2]/div/div/div/div/div
    Wait until page contains    Customize your experience
    Click Element    xpath://html/body/div/div/div/div[1]/div[2]/div/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div[2]/div/div/div/div
    Wait until page contains    Create your account
    Click Element    xpath://html/body/div/div/div/div[1]/div[2]/div/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div[2]/div/div/div[2]/div
