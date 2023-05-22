*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/LoginKeywords.robot

*** Variables ***

${Browser}    chrome
${SiteUrl}   https://www.saucedemo.com/
${Username}    standard_user
${Password}    secret_sauce


*** Test Cases ***

LoginTest
    Open my Browser    ${SiteUrl}    ${Browser}
    Input Username    ${Username}   
    Input Password    ${Password}
    Click Button SignIn   
    Sleep    3s
    Verify Successfull Login
    Close My Browser


