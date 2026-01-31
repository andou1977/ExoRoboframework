

*** Settings ***
Library    RPA.Excel.Files

Library    RPA.Browser



*** Keywords ***

*** Test Cases ***
logger avec ddt
    Open Browser  https://www.saucedemo.com/   chrome
    Open Workbook   C:/Users/GENIUS/IdeaProjects/ExoRoboframework/File/code.xlsx
    ${myvalue}=   Read Worksheet As Table
    FOR    ${element}    IN    @{myvalue}
        ${myusername}=   Set Variable  ${element}[A]
        ${password}=   Set Variable  ${element}[B]
    Input Text   css=#user-name    ${myusername}
    Input Password    css:#password    ${password}
    Click Element    css:#login-button
     Wait Until Page Contains    Swag Labs
    END

  


