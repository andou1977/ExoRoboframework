

*** Settings ***
Library    RPA.HTTP
Library    RPA.Excel.Files
Library    RPA.Tables
Library    Collections

Resource   C:/Users/GENIUS/IdeaProjects/ExoRoboframework/ressources/variables.robot
Library    SeleniumLibrary    run_on_failure=Capture Screenshot and Embed






*** Keywords ***
Télécharger le fichier CSV1
    Capture Page Screenshot   filename=EMBED


    [Tags]    EN-21
    [Setup]   Download    ${URL}    ${DEST}
    ${fre}=   Read table from CSV   ${DEST}
    Download   ${url2}   ${destin2}
    ${de2}=   Read table from CSV   ${destin2}
    [Teardown]



