


*** Settings ***
Library    RPA.Excel.Files
Library    Collections
Library    RPA.JSON
Library    RPA.Browser

*** Variables ***
${FICHIER}    C://Users//GENIUS//IdeaProjects//ExoRoboframework//users.xlsx

*** Test Cases ***
Lire Mot De Passe Seulement
    Open Workbook    ${FICHIER}
    ${lire}=  Read Worksheet As Table  header=true
    FOR    ${element}    IN    @{lire}
     IF    '${element}[username]' == 'standard_user' and '${element}[MOTDEPASSE]' == 'secret_sauce'
                ${USERNAME}=    Set Variable    ${element}[username]
                ${PASSWORD}=    Set Variable    ${element}[MOTDEPASSE]
            END

       END






#    ${lire}=   Read Worksheet As Table
#    ${leslires}=   Get From List  ${lire}  2
#    Log    ${leslires}   MOTDEPASSE
#    Log    ${leslires}
#   Open Browser   https://www.saucedemo.com/  firefox
#   Input Text    id=user-name    ${leslires[1]}
#   Input Text    id=password     ${leslires[0]}
#   Click Button  id=login-button













