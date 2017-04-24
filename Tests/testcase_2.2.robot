*** Settings ***
Library     Selenium2Library
Resource    ../Keywords/semestralka_keywords.txt
Resource    ../Settings/semestralka_settings.txt
Documentation   Cilem tohoto testu je overit, zda se nelze prihlasit nevalidnim uctem
Test Setup  Open Browser And Go To Page ${url}  ${browser}
Test Teardown   Close All Browsers

*** Test cases ***
Neuspesne prihlaseni
    LogInError   ${emailWrong}    ${password} ${fullName}
