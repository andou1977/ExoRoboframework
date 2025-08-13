*** Settings ***
Library    RPA.Browser


*** Variables ***

${url}   file:///C:/Users/GENIUS/Downloads/picked/index.html

*** Keywords ***
Login to website
    Open Browser   ${url}   firefox
    @{elements}   Get WebElements    xpath=//h2[@class="dolor_text"]
    FOR    ${element}    IN    @{elements}
        ${text}=    Get Text    ${element}
        Log    ${text}
    END







*** Test Cases ***
Launch
  Login to website
