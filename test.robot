*** Settings ***
Documentation  Wyszukiwanie zadanego produktu/marki
Library  Selenium2Library

# Copy/paste the line below into Terminal to execute:
# pybot -d results tests/amazon.robot

*** Variables ***
*** Test Cases ***
User must sign in to check out
    [Documentation]  Wyszukiwanie zadanego produktu/marki
    [Tags]  Smoke
    Open Browser  http://www.dercar.pl  chrome
    Wait Until Page Contains  O firmie
    Input Text  id=InSzukaj  Tenzi
    Click Button  id=ButSzukaj
    Wait Until Page Contains  Wyniki szukania: Tenzi
    Click Link  css=#result_0 a.s-access-detail-page
    Wait Until Page Contains  Back to search results
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart
    Click Link  id=hlb-ptc-btn-native
    Page Should Contain Element  signInSubmit
    Close Browser

*** Keywords ***
