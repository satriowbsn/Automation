*** Settings ***
Library    SeleniumLibrary

* Keywords *
Set Environment Variable  https://chromedriver.chromium.org/  chromedriver.exe

*** Variables ***
${Browser}    chrome
${url}    https://cmsdev.ekahospital.com/
${Username}    jaykeren
${password}    jaykeren


*** Keywords ***

GoToCMS
    [Arguments]      ${url}    ${Browser}
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window

Input username
    click element  xpath://*[@id="username"]
    Input Text     xpath://*[@id="username"]    ${Username} 

Input Password 
   Click Element   xpath://*[@id="password"]
   Input Text      xpath://*[@id="password"]    ${password} 

ClickBtn_signIN
    Click Button    xpath://*[@id="kc-login"]

ClickApp   
q

                    
 
*** Test Cases ***

Login
    GoToCMS    ${url}   ${Browser}
    Input username
    Input Password
    ClickBtn_signIN
    ClickApp
    
