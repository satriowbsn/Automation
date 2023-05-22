*** Settings ***

Library           SeleniumLibrary
Library           OperatingSystem

Resource          ../VsCode/Login Eka.robot 



Suite Setup       LoginEka.Start Testcase

Suite Teardown    LoginEka.Finish TestCase

Test Template     Invalid Login



*** Test Cases ***

Login with user and pasword      ${username}     ${password}  ${Error_Messages}



*** Keywords ***

Invalid login

    [Arguments]    ${username}     ${password}   ${Error_Messages}

    Input username    ${username}

    Input pwd    ${password}

    click login button

    Error Messages