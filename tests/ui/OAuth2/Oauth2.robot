*** Settings ***
Library    RequestsLibrary

*** Variables ***
${ACCESS_TOKEN}    IGxDcAoyuiMomtliNNFH6KQxHRpwPrKz9Q7K1P5-tbBHE7HQ8yyx9FlvRs81My-NnfWpXIT6
${API_URL}         https://authorization-server.com/token

*** Test Cases ***
Appel API Avec Token OAuth2
    ${headers}=    Create Dictionary    Authorization=Bearer ${ACCESS_TOKEN}
    Create Session    api    ${API_URL}
    ${response}=    GET On Session    api    /    headers=${headers}
    Should Be Equal As Integers    ${response.status_code}    200
    Log To Console     Réponse: ${response.json()}