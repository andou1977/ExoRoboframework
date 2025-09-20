*** Settings ***

Library    SeleniumLibrary    run_on_failure=Capture Page Screenshot

*** Variables ***

${url}   C:/Users/GENIUS/IdeaProjects/ExoRoboframework/File/index.html

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
  [Tags]    EN-21
  Login to website
