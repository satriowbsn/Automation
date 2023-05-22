* Settings *
Library     SeleniumLibrary
Library     OperatingSystem 
 





* Variables *
#Your Browser
${Browser}        Chrome
#Testing URL
${SiteUrl}       https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Username}     Admin
${Password}     admin123
${WrongUsername}    admin123
${WrongPassword}    Password

* Keywords *
#Feel free for add any Keywords here
Open page
    open browser    ${SiteUrl}      ${browser}
    Maximize Browser Window
    Sleep  3s


Login

     Click Element   xpath=//*[@name='username']     
     Input Text      xpath=//*[@name="username"]     ${Username}
     Sleep  3s
     Click Element   xpath=//*[@name='password']
     
     Sleep  3s
     Input Text    xpath=//*[@name='password']  ${Password}
     Click Button  xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button





* Test Cases *
HROrangeLogin
    Open page
    Login


