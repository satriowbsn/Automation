* Settings *

Library     SeleniumLibrary
Library     OperatingSystem

* Variables *

#Your Browser

${Browser}            Chrome
#Testing URL
${SiteUrl}       https://devbooking.ekahospital.com/my_account
${Nama}          Satrio Item
${DOB}           01-01-1990
${Username}     Silvia.damayanti4868@gmail.com
${Password}     123456



* Keywords *
#Feel free for add any Keywords here

Open_page
    open browser    ${SiteUrl}      ${browser}     
    Maximize Browser Window

Login

     Click Element   xpath=//*[@name='username']    
     Input Text      xpath=//*[@name="username"]     ${Username}
     Sleep  3s
     Click Element   xpath=//*[@name='password']
     Input Text    xpath=//*[@name='password']  ${Password}
     Sleep     30s
     Click Button   xpath=//*[@id="submitButton"]

Tambah_Pasien
    Click Button    xpath=//html/body/main/div/div[2]/div[2]/div/div[2]/div[2]/button
    Sleep    2s
    Click Element   xpath=//*[contains(text(), 'Isi Form Pasien')]
    Sleep    3s
    Click Element   xpath=//*[@id="full-name"]
    Input Text      xpath=//*[@id="full-name"]    ${Nama}
    Click Element   xpath=//*[@id="patient-container"]/div[2]/div[1]/div[2]/div[2]/div/div[2]/div/div/input
    Click Element   xpath=//*[placeholder="Pilih tanggal lahir pasien"]   
    Input Text      xpath//*[@id="patient-container"]/div[2]/div[1]/div[2]/div[2]/div/div[2]/div/div/input    ${DOB}
    Click Button    xpath=//*[@id="patient-container"]/div[2]/div[1]/div[2]/div[2]/div/div[3]/button
placeholder
*** Test Cases ***
 TambahPasien  
    Open_page
    Login
    Tambah_Pasien

