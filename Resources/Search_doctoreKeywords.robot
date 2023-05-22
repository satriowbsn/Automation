*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem 
#Variables   ../PageObjects/Search_doctor.py

*** Keywords ***
Open my Browser
    [Arguments]      ${Siteurl}    ${Browser}
    Open Browser    ${Siteurl}    ${Browser}
    Maximize Browser Window

Open Search_doctor
     Click Element    xpath=//*[@id="home"]/div[2]/div[1]/a/span[1]/img


click Search_Category
  Click Element    xpath=//*[@placeholder="Ketik nama dokter & spesialisasi disini"]

Input Search_category
   [Arguments]    ${NamaDokter}
   Input Text   xpath=//*[@placeholder="Ketik nama dokter & spesialisasi disini"]    ${NamaDokter}
   Sleep    3s


Click LihatProfil
    Click Button   xpath=//html/body/main/div/div[2]/div[2]/div/div/div[1]/div[3]/button[1]


Close My Browser
    Close All Browsers

