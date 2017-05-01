*** Settings ***
Documentation     Tento test ná za úkol zjistit, zda funguje vyhlůedávání klíčových slov pomocí vyhledávacího formuláře správně.
Test Setup        Open Browser And Go To Page    ${url}    ${browser}
Test Teardown     Close All Browsers
Library           Selenium2Library
Resource          ../Keywords/semestralka_keywords.txt
Resource          ../Settings/semestralka_settings.txt

*** Test cases ***
Vyhledání podle Klíčových slov
    Search using keywords    ${SearchForm}    ${SearchWindow}
