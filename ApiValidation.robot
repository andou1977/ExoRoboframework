

*** Settings ***


Library    RPA.HTTP

*** Keywords ***
Validation Api Get
   Create Session  myaliasget  http://localhost:8080
   ${verifyget}=  Get Request    myaliasget    /listall
   Should Be Equal As Integers   ${verifyget.status_code}   200


Validation Api Post
   Create Session    myaliaspost    http://localhost:8080
   ${verifypost}=  Create Dictionary  nomClient="robotframework"  age=15  compte=3250.67
   ${add}=  Post Request    myaliaspost    /save   json=${verifypost}
   Status Should Be    200


*** Variables ***

*** Test Cases ***
Validation Get
   Validation Api Get
Validation Post
   Validation Api Post

