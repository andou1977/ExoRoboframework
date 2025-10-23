*** Settings ***

Library    Collections
Library    SeleniumLibrary
Library    RPA.Excel.Files


*** Variables ***


*** Keywords ***



*** Test Cases ***
Login with Excel
    [Setup]  Open Workbook   C:\\Users\\GENIUS\\IdeaProjects\\ExoRoboframework\\File\\login.xlsx  firefox
    ${fileexcel}=   Read Worksheet As Table  header=false
    ${read}=  Get From List    ${fileexcel}   2
    Open Browser  https://www.saucedemo.com/
    Input Text    id=user-name     ${read[1]}
    Input Text    id=password   ${read[2]}
    Click Button    id=login-button
    Wait Until Page Contains    Sauce Labs Backpack
    [Teardown]  Wait Until Page Contains    Sauce Labs Bike Light




