*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}        chrome
${Username}       xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input    # marija
${Password}       xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input    # admin123
${login_button}    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
${Invalid credentials}    xpath://html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/div/div[1]/div[1]/p
${msg}            ${EMPTY}

*** Test Cases ***
TC1_Login
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Sleep    2
    Input Text    //html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input    Admin
    Sleep    2
    Input Text    //html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input    admin123
    Sleep    2
    Click Button    //html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button

TC2_Admin
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Sleep    2
    Input Text    //html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input    Admin
    Sleep    2
    Input Text    //html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input    admin123
    Sleep    2
    Click Button    //html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Sleep    2
    Click Element    //html/body/div/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a/span

TC3_SystemSearch
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Sleep    2
    Input Text    //html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input    Admin
    Sleep    2
    Input Text    //html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input    admin123
    Sleep    2
    Click Button    //html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Sleep    2
    Click Element    //html/body/div/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a/span
    Sleep    2
    Input Text    //html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/input    John.Smith
    Sleep    2
    Click Button    //html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]
    Sleep    10
    Close Browser

TC0_login_without_us_&_pw
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Sleep    2
    Click Button    xpath://html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button

TC1_login_without_username
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Sleep    2
    Input text    xpath://html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input    admin123
    Click Button    xpath://html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Sleep    5
    Close Browser

TC2_login_without_psw
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Sleep    2
    Input text    xpath://html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input    Admin
    Sleep    2
    Click Button    xpath://html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Sleep    5
    Close Browser

TC_click link
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Sleep    2
    Input Text    //html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input    Admin
    Sleep    2
    Input Text    //html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input    admin123
    Sleep    2
    Click Button    //html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Sleep    2
    Click Link    link:Admin
    Sleep    2
    Click Link    link:PIM
    Sleep    2
    Click Link    link:Leave
    Sleep    2
    Click Link    link:Time
    Sleep    2
    Click Link    link:Recruitment
    Sleep    2
    Click Link    link:My Info
    Sleep    2
    Click Link    link:Performance
    Sleep    2
    Click Link    link:Dashboard
    Sleep    2
    Click Link    link:Directory
    Sleep    2
    Click Link    link:Maintenance
    Sleep    2
    Click Button    xpath://html/body/div/div[1]/div[1]/form/div[4]/button[1]
    Sleep    2
    Click Link    link:Buzz
    Sleep    5
    Close Browser

TC_lg_wrong_pass
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Set Selenium Speed    2
    Input text    xpath://html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input    Admin
    Input text    name:password    12345
    Sleep5

TC_mssg
    Set Selenium Speed    1
    Open browser    ${url}    ${browser}
    Maximize Browser Window
    Input text    ${Username}    marija
    input text    ${Password}    admin123
    click button    ${login_button}
    ${msg}    Get Text    ${Invalid credentials}
    Log    ${msg}
    Should Be Equal    Invalid credentials    ${msg}
