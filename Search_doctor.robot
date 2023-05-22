* Settings *
Library     SeleniumLibrary
Library     OperatingSystem 

* Keywords *
Set Environment Variable  https://chromedriver.chromium.org/  chromedriver.exe
* Variables *
#Your Browser
${Browser}        Chrome
#Testing URL
${SiteUrl}       https://ekahospital.com
${Nama_Dokter}   drg. Alexander Bryan

* Keywords * 
#Feel free for add any Keywords here
Open page
    open browser    ${SiteUrl}      ${browser}     
    Maximize Browser Window


Open Search_doctor
     Click Element   xpath=//*[@id="home"]/div[2]/div[1]/a
            
Input Search_Category
     Click Element  xpath=//*[@placeholder="Ketik nama dokter & spesialisasi disini"]
     Input Text     xpath=//*[@placeholder="Ketik nama dokter & spesialisasi disini"]   ${Nama_Dokter}
     Sleep  3s
     Click Button   xpath=//html/body/main/div/div[2]/div[2]/div/div/div[1]/div[3]/button[1]
     
     
     
* Test Cases *
Search Doctor In Eka Hospital
    Open page 
    Open Search_doctor
    Input Search_Category
