
*** Settings ***
Library    RPA.Browser
Library    RPA.PDF

*** Variables ***
${myvariable}    1 item left!
*** Keywords ***




*** Test Cases ***
TodoMvc
    Open Browser  https://todomvc.com/  chrome
    Click Element   class=link
    Input Text   class=new-todo   Robot Framework
    Press Keys    css:.new-todo    ENTER
    Input Text    class=new-todo    Selenium
    Press Keys    css=.new-todo   ENTER
    Click Element    class=toggle
    ${biil}=  Get Text   xpath=//span[@class="todo-count"]
    IF    '${biil}' == '1 item left!'
       Should Be Equal    ${biil}   ${myvariable}
    ELSE
       Log    il ne sont pas egaux

    END
#    Run Keyword If    ${biil} == ${myvariable}
#    ...    Log    ${biil}
#    ...  ELSE
#    ...   log   merde
#    Should Be Equal    ${biil}   ${myvariable}
    




   


