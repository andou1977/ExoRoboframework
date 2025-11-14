
*** Settings ***
Library    RPA.Browser
Library    RPA.PDF

*** Variables ***

*** Keywords ***




*** Test Cases ***
TodoMvc
    Open Browser  https://todomvc.com/  firefox
    Click Element   class=link
    Input Text   class=new-todo   Robot Framework
    Press Keys    css:.new-todo    ENTER
    Input Text    class=new-todo    Selenium
    Press Keys    css=.new-todo   ENTER
    Click Element    class=toggle
    ${biil}=  Get Text   xpath=//span[@class="todo-count"]
    Should Be Equal    ${biil}   1 item left!




   


