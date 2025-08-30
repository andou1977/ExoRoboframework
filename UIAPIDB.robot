#
#
#*** Settings ***
#Library    RPA.HTTP
#Library    RPA.JSON
#Library    DatabaseLibrary
#Library    RPA.Windows
#
#*** Variables ***
#${password}
#
#*** Keywords ***
#
#*** Test Cases ***
#ADDValue
#     Create Session   jsonfolder   http://localhost:8090
#     ${addvalue}=   Create Dictionary    nomClient=peter   age=67   compte=900
#     ${addgrande}=   Post Request    jsonfolder  /save   json= ${addvalue}
#     log    ${addgrande}
#verify
#    [Setup]  Connect To Database  pymysql  try  root  ${password}  localhost  3306
#    ${testerrequette}=  query  select * from client where nom_client='andou'
#    Should Not Be Empty  ${testerrequette}
#    [Teardown]  Disconnect From Database
#
#
#
#
#
#
