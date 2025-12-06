#*** Settings ***
#
#Library    SeleniumLibrary
#
#
#*** Variables ***
#${url}   https://www.saucedemo.com/
#${username}    standard_user
#${password}    secret_sauce
#
#*** Keywords ***
#Saudecemo Website
#  Login to website
#  addproduct
#  modifyquantity
#
#
#Login to website
#
#   ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
#   ${prefs}    Create Dictionary   credentials_enable_service=${false}
#   Call Method    ${chrome_options}    add_experimental_option    prefs    ${prefs}
#   Call Method    ${chrome_options}    add_argument    --disable-infobars
#   Create WebDriver    Chrome    options=${chrome_options}
#   Go To    ${url}
#
##   Open Browser   ${url}   chrome
#   Input Text  id=user-name  ${username}
#   Input Text  id=password  ${password}
#   Should Be Equal    ${username}  standard_user
#   Click Button  id=login-button
#   addproduct
##   modifyquantity
##   verify
#   Sleep    15
#   Close Browser
#
#
#
#addproduct
#  Click Element  id=add-to-cart-sauce-labs-backpack
#modifyquantity
#  Click Element  class=shopping_cart_link
#verify
#   ${verifyvalue}=  Get Text    xpath=//div[@class="cart_quantity"]
#   Should Be Equal As Strings    ${verifyvalue}    1
##   Should Not Be Equal As Numbers   ${verifyvalue}    -1
#
#
#
#*** Test Cases ***
#Login
#    [Tags]    EN-21
#    Login to website
#
