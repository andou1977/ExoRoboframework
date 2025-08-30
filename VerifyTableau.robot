*** Settings ***
Library    RPA.Browser


*** Variables ***

${url}   C:/Users/GENIUS/IdeaProjects/ExoRoboframework/FileHTML/index.html

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
