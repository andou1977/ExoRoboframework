*** Settings ***
Library     RPA.Browser.Selenium
Library    DatabaseLibrary
Documentation  Remmplir Le Formulaire


*** Variables ***
${firstname}   andou
${lastname}    emmanuel
${email}       andouemmanuel@gmail.com
${area}        33
${phone}       0678967887
${position}    Testeur Auto et Fonctionnelle
${adress}      47 Boulevard Trouin
*** Keywords ***
Open the Browser
     [Documentation]  Remplir
     ...             Lancer le navigateur
     Open Browser   C:/Users/GENIUS/IdeaProjects/ExoRoboframework/File/html-application-form.html  chrome
Envoyer les données
     [Documentation]   Le formulaire
     ...   remplir avec des informations
     Input Text     css:#firstname   ${firstname}
     Input Text     id=lastname    ${lastname}
     Input Text     id=email     ${email}
     Wait Until Element Is Visible    id=lastname
     Select From List By Value   id=occupation      others
     Input Text     id=areacode    ${area}
     Input Text     id=phone       ${phone}
     Input Text     id=age         ${position}
     Press Keys     id=dob    22/09/1967
     Input Text     id=address     ${adress}
     Should Not Be Empty    css:#lastname

     Sleep           5



*** Test Cases ***
Full forms
   Open the Browser
   Envoyer les données

