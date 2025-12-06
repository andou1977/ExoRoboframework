*** Settings ***

Library    RPA.Excel.Files
Library    RPA.Tables
Library    Collections
Resource   C:/Users/GENIUS/IdeaProjects/ExoRoboframework/resources/variables.robot
Library    SeleniumLibrary    run_on_failure=Capture Screenshot and Embed
Library    RPA.HTTP




*** Keywords ***
Télécharger le fichier CSV1
    Capture Page Screenshot   filename=EMBED
    [Tags]    EN-21
    [Setup]   Download    ${URL}    ${DEST}
    ${fre}=   Read table from CSV   ${DEST}
    Download   ${url2}   ${destin2}
    ${de2}=   Read table from CSV   ${destin2}
    [Teardown]


Créer le command
    Create Session   placejsonholder    ${navigateur}
    ${addcommande}=    Create Dictionary   name=Hp victus 15   year=2020   price=4098.34   CPU model=intel core i9
    ${thecommande2}=   POST On Session    placejsonholder    /objects    json=${addcommande}
    Status Should Be    200
    ${verify}=   To Json    ${thecommande2.content}
    Should Be Equal    ${verify['name']}    Hp victus 15

    Open Browser   https://api.restful-api.dev/objects   firefox
    Page Should Contain    ${verifyvariable}
















