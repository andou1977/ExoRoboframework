*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    String
Library    mynewtoken.py


*** Variables ***
${BASE_URL}     https://reqres.in/api
${TOKEN}        eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiYWRtaW4iOnRydWUsImlhdCI6MTUxNjIzOTAyMn0.KMUFsIDTnFmyG3nMiGM6H9FNFUROf3wh7SmqJp-QV30
${SECRET}       a-string-secret-at-least-256-bits-long

*** Test Cases ***
Vérifier Token JWT Complet
    Log To Console    \n Vérification du token...
    ${decoded}=    Verify And Decode Jwt    ${TOKEN}    ${SECRET}
    Log To Console    Payload décodé: ${decoded}


    Log To Console    \n Vérification des claims...
    Check Claims    ${decoded}    expected_name=John Doe    expected_admin=${True}

    Log To Console    \n Vérification expiration...
    ${exp}=    Set Variable    ${decoded['exp']}
    ${now}=    Evaluate    int(__import__('time').time())
    Run Keyword If    ${exp} < ${now}    Fail    Le token est expiré (${exp} < ${now})
    Log To Console     Le token est encore valide.

    Log To Console    \n Tout est OK ! Token valide, signature correcte, claims cohérents.
