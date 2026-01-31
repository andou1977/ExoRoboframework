

*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    RPA.Excel.Files
Library    RPA.Tables
Library    index.py


*** Variables ***
${readcsv}   C:\\Users\\GENIUS\\IdeaProjects\\ExoRoboframework\\File\\andou.csv

*** Keywords ***
Manipuler Les Api request
    Create Session    manipuler    https://api.restful-api.dev
    ${myrequest}=   GET On Session   manipuler    /objects
    Status Should Be    200
    ${nametest}=   To Json    ${myrequest.content}
    ${first}=  Get From List   ${nametest}    0
    Should Be Equal      ${first['name']}    Google Pixel 6 Pro

Manipuler Fichier csv

    ${lirecsv}=  Read table from CSV   ${readcsv}
    FOR    ${element}    IN    @{lirecsv}
    IF    '${element}[First Name]' == 'Sheryl' and '${element}[Last Name]' == 'Baxter'
               ${USERNAME}=    Set Variable    ${element}[First Name]

           END
    END


*** Test Cases ***
Call Api
   Manipuler Les Api request
call Csv
   Manipuler Fichier csv

