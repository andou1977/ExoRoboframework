*** Settings ***
Library    RPA.Excel.Files
Library    Collections
Library    RPA.JSON
Library    RPA.Browser

*** Variables ***
${FICHIER}    C://Users//GENIUS//IdeaProjects//ExoRoboframework//users.xlsx

*** Test Cases ***
Lire Mot De Passe Seulement
    [Tags]    EN-21
    Open Workbook    ${FICHIER}
    ${lire}=  Read Worksheet As Table  header=true
    FOR    ${element}    IN    @{lire}
     IF    '${element}[username]' == 'standard_user' and '${element}[MOTDEPASSE]' == 'secret_sauce'
                ${USERNAME}=    Set Variable    ${element}[username]
                ${PASSWORD}=    Set Variable    ${element}[MOTDEPASSE]
            END

       END

