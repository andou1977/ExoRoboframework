*** Settings ***
Library    RPA.Excel.Files
Library    Collections



*** Variables ***
${FICHIER}    C://Users//GENIUS//IdeaProjects//ExoRoboframework//File//login.xlsx

*** Test Cases ***
Lire Mot De Passe Seulement
    [Tags]    EN-21
    Open Workbook    ${FICHIER}
    ${lire}=  Read Worksheet As Table  header=true
    FOR    ${element}    IN    @{lire}
     IF    '${element}[Username]' == 'standard_user' and '${element}[Password]' == 'secret_sauce'
                ${USERNAME}=    Set Variable    ${element}[Username]
                ${PASSWORD}=    Set Variable    ${element}[Password]
            END

       END
       



