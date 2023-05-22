
* Settings *

Library     SeleniumLibrary
Library     OperatingSystem




* Variables *

#Your Browser

${Browser}        Chrome
#Testing URL

${SiteUrl}       https://devbooking.ekahospital.com
${Username}     Silvia.damayanti4868@gmail.com
${Password}     123456


* Keywords *
#Feel free for add any Keywords here

Open page

    open browser    ${SiteUrl}      ${browser}
    Maximize Browser Window
    Sleep  3s
Open page login

    Click Element   xpath: //*[contains(text(),"Akun")]
    Sleep     5s

Login

     Click Element   xpath=//*[@name='username']    
     Input Text      xpath=//*[@name="username"]     ${Username}
     Sleep  3s
     Click Element   xpath=//*[@name='password']
     Input Text    xpath=//*[@name='password']  ${Password}
     Click Element   xpath: //*[@id="html_element"]
     Click Button   xpath=//*//*[@id="submitButton"]


* Test Cases *



EkaLogin
    Open page
    Open page login
    Login



