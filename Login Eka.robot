
*** Settings ***
Library      SeleniumLibrary

*** Variables ***
${URL}     https://ekahospital.com/EH4dm1n/login
${BROWSER}  chrome
${Username}
${Password}
${txt_error}    xpath://div[@class="alert alert-danger alert-dismissible"]
${Error_Messages}
${Result}    xpath://div[@class="alert alert-danger alert-dismissible"]
*** Keywords ***
Start Testcase
    Open Browser     ${URL}     browser=${BROWSER} 
Maximize Browser Window

Finish TestCase
    Close Browser

Open Login Page
Go To ${URL}

Input username
  [Arguments]     ${Username}
    Click Element  xpath=//*[@id="exampleInputEmail"]
    Input Text     xpath=//*[@id="exampleInputEmail"]     ${Username}


Input pwd
    [Arguments]     ${password}
    Click Element  xpath=//*[@id="exampleInputPassword"]
    Input Text     xpath=//*[@id="exampleInputPassword"]     ${Password}

click login button
    Click Element     xpath: //*[contains(text(), "Login")]

welcome page should be visible
    Title Should Be     Welcome Page

Error Messages
    Page Should Contain Element     ${txt_error} ${Error_Messages}

Eka Hospital - LOGIN 


    