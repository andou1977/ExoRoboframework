*** Settings ***
Library    RPA.HTTP
Library    RPA.Excel.Files
Library    RPA.Tables
Library    Collections

*** Variables ***
${URL}      https://drive.google.com/uc?id=1zO8ekHWx9U7mrbx_0Hoxxu6od7uxJqWw&export=download
${DEST}     C:/Users/GENIUS/IdeaProjects/ExoRoboframework/File/andou.csv

${url2}     https://drive.google.com/uc?id=1OT84-j5J5z2tHoUvikJtoJFInWmlyYzY&amp;export=download
${destin2}  C:/Users/GENIUS/IdeaProjects/ExoRoboframework/File/andou2.csv

*** Test Cases ***
Télécharger le fichier CSV1
    Download    ${URL}    ${DEST}
    ${fre}=   Read table from CSV   ${DEST}
    Download   ${url2}   ${destin2}
    ${de2}=   Read table from CSV   ${destin2}






