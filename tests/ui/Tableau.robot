

*** Settings ***
Library    RPA.Browser

*** Keywords ***

*** Variables ***
${table}    //table

*** Test Cases ***
Tableau
    [Tags]    EN-21
    Open Browser   C:/Users/GENIUS/IdeaProjects/ExoRoboframework/File/index.html   firefox
    Element Should Be Visible   ${table}
    wait until element is visible   ${table}
    ${myvalue}=   Get Text    xpath=//table/thead/tr/th[2]
    ${myvalue2}=   Get Text    xpath=//table/tbody/tr/td[1]
    Should Be Equal    ${myvalue}    Product 1
    Should Be Equal    ${myvalue2}    Price


#C:/Users/GENIUS/IdeaProjects/ExoRoboframework/File/html-application-form.html