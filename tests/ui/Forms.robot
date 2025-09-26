*** Settings ***
Library    RPA.Browser

*** Variables ***
${firstname}   andou
${lastname}    emmanuel
${email}       andouemmanuel@gmail.com
${area}        33
${phone}       0678967887
${position}    Testeur Auto et Fonctionnelle
${adress}      47 Boulevard Trouin
*** Keywords ***
forms
     Open Browser   C:/Users/GENIUS/IdeaProjects/ExoRoboframework/File/html-application-form.html  firefox
     Input Text     id=firstname   ${firstname}
     Input Text     id=lastname    ${lastname}
     Input Text     id=email     ${email}
     Select From List By Value   id=occupation      others
     Input Text     id=areacode    ${area}
     Input Text     id=phone       ${phone}
     Input Text     id=age         ${position}
     Press Keys     id=dob    22/09/1967
     Input Text     id=address     ${adress}
     Sleep           5


*** Test Cases ***
Full forms
   [Tags]    EN-21
   forms

