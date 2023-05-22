* Settings *
Library     SeleniumLibrary
Library     OperatingSystem 


* Keywords *
Set Environment Variable  https://chromedriver.chromium.org/  chromedriver.exe
* Variables *
#Your Browser
${Browser}        Chrome
#Testing URL
${SiteUrl}       https://stg.bo.haloretail.halosis.cloud/index.php?r=site/login
${Username}     admin1@tehtarik.com
${Password}     123456

# Tes Tambah
* Keywords * 
#Feel free for add any Keywords here
Open page
  open browser    ${SiteUrl}      ${browser}     
    Maximize Browser Window



Login
   Click Element   xpath=//*[@id="email-tab"] 
   Sleep     1s   
   Click Element   xpath=//*[@id="username"]
   Input Text      xpath=//*[@id="username"]     ${Username}
   Sleep  3s
   Click Element   xpath=//*[@id="password"]
   Input Text      xpath=//*[@id="password"]  ${Password}
   Click Button   xpath=//*[@id="login-form"]/div/div/div[2]/div/div[2]/div[2]/div[3]/input
  
   Close Browser

* Test Cases *
Login BO
    Open page 
    Login
    