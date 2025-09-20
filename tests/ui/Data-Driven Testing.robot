
#*** Keywords ***
#Télécharger le fichier CSV1
#    [Tags]    EN-21
#    [Setup]  Download    ${URL}    ${DEST}
#    ${fre}=   Read table from CSV   ${DEST}
#    Download   ${url2}   ${destin2}
#    ${de2}=   Read table from CSV   ${destin2}
#    [Teardown]

#*** Variables ***
#${URL}      https://drive.google.com/uc?id=1zO8ekHWx9U7mrbx_0Hoxxu6od7uxJqWw&export=download
#${DEST}     C:/Users/GENIUS/IdeaProjects/ExoRoboframework/File/andou.csv
#
#${url2}     https://drive.google.com/uc?id=1OT84-j5J5z2tHoUvikJtoJFInWmlyYzY&amp;export=download
#${destin2}  C:/Users/GENIUS/IdeaProjects/ExoRoboframework/File/andou2.csv


*** Settings ***
Library    SeleniumLibrary    run_on_failure=Capture Page Screenshot
Resource   C:/Users/GENIUS/IdeaProjects/ExoRoboframework/ressources/keywords.robot




*** Test Cases ***
Appelez la fonction
   Télécharger le fichier CSV1







