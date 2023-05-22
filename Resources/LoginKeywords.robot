*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py

*** Keywords ***

Open my Browser
    [Arguments]      ${Siteurl}    ${Browser}
    Open Browser    ${Siteurl}    ${Browser}
    Maximize Browser Window

Input Username
    [Arguments]    ${Username}
    Input Text    ${txt_loginUsername}    ${Username}

Input Password
     [Arguments]    ${Password}
     Input Text    ${txt_loginPassword}    ${Password}
    
Click Button SignIn
    Click Button    ${btn_signIn}


Verify Successfull Login
    Title Should Be    Swag Labs

Close My Browser
    Close All Browsers
