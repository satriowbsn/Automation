*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Search_doctoreKeywords.robot

*** Variables ***

${Browser}    chrome
${SiteUrl}   https://www.ekahospital.com/
${NamaDokter}    dr. Zulkarnain Barasila


*** Test Cases ***
Search Doctor In Eka Hospital
     Open my Browser    ${SiteUrl}    ${Browser}
     Open Search_doctor 
     click Search_Category
     Input Search_category    ${NamaDokter}
     Click LihatProfil
     Close My Browser


    