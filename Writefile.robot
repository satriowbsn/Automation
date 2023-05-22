*** Settings ***
Library    SeleniumLibrary

* Keywords *
Set Environment Variable  https://chromedriver.chromium.org/  chromedriver.exe

*** Variables ***
${Browser}    chrome
${url}    http://www.practiceselenium.com/practice-form.html

*** Test Cases ***

Test_RadioButton_Checkboxes

    Open Browser    ${Browser} ${url}
    Maximize Browser Window
    Select Radio Button    sex     male
    Select Radio Button    exp     4   

