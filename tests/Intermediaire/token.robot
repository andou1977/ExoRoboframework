#*** Settings ***
#Library    RequestsLibrary
#
#*** Test Cases ***
#Obtenir Et Utiliser Un Token
#    Create Session    reqres    https://reqres.in    verify=False
#    ${body}=    Create Dictionary    email=eve.holt@reqres.in    password=cityslicka
#    ${response}=    Post Request    reqres    /api/login    json=${body}
#    Status Should Be    200
#    ${token}=    Evaluate    ${response.json()}['token']
#    Log To Console    Token: ${token}





