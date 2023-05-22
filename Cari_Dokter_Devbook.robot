* Settings *

Library     SeleniumLibrary
Library     OperatingSystem




* Variables *

#Your Browser

${Browser}        Chrome
#Testing URL

${SiteUrl}       https://devbooking.ekahospital.com/
${Nama_Dokter}   dr. Abrar Arham, Sp.BS
${Username}     Silvia.damayanti4868@gmail.com
${Password}     123456

* Keywords *
#Feel free for add any Keywords here

Open page
    open browser    ${SiteUrl}      ${browser}     
    Maximize Browser Window


Search_By_name
     Click Element  xpath=//*[@placeholder="Ketik nama dokter & spesialisasi disini"]
     Input Text     xpath=//*[@placeholder="Ketik nama dokter & spesialisasi disini"]   ${Nama_Dokter}
     Sleep  3s
     Click Button   xpath=//html/body/main/div/div[2]/div[2]/div/div/div[1]/div[3]/button[1]
  
Search_by_category
    Click Element  xpath= //*[@id="select-location"]
    Click Element  xpath=//html/body/main/div[1]/div[2]/div[2]/div[1]/div/div[2]/div[1]/div/div[3]/div[2]/div
    Click Element  xpath= //*[@id="select-day"]
    Click Element  xpath=//html/body/main/div/div[2]/div[1]/div[2]/div[2]/div[3]/div/div[3]/div[4]/div
    Sleep  3s


Booking_Appointment
   Click Element  xpath=//*[@placeholder="Ketik nama dokter & spesialisasi disini"]
   Input Text     xpath=//*[@placeholder="Ketik nama dokter & spesialisasi disini"]   ${Nama_Dokter}
   Sleep  3s
   Click Button     xpath=/html/body/main/div/div[2]/div[2]/div/div/div[1]/div[3]/button[2]   
   Click Element    xpath=/html/body/main/div/div[2]/div[2]/div/div/div[1]/div[2]/div[1]/div/div[1]/div[2]/div[2]/div/div[2]/div/span[5]
   Sleep    3s
   Click Element    xpath=/html/body/main/div/div[2]/div[2]/div/div/div[1]/div[2]/div[2]/div/button[1] 
   Click Button    xpath=/html/body/main/div[1]/div[2]/div[2]/div/div/div[2]/div[2]/button[2]
   sleep     5s
   Click Element   xpath=//*[@name='username']    
   Input Text      xpath=//*[@name="username"]     ${Username}
   Sleep  3s
   Click Element   xpath=//*[@name='password']
   Input Text    xpath=//*[@name='password']  ${Password}
   Sleep    10s
   Click Button   xpath=//*//*[@id="submitButton"]
  


     
* Test Cases *
Search Doctor by Name
    Open page 
    Search_By_name
    Sleep    3s
    Close Browser
searcn_by_category
    Open page 
    Search_by_category
    Sleep    3s
    Close Browser

Booking_Doctor
    Open page
    Booking_Appointment
    Sleep    3s
    Close Browser
     




