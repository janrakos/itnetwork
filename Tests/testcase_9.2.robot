*** Settings ***
Library		Selenium2Library
Resource	../Keywords/semestralka_keywords.txt
Resource	../Settings/semestralka_settings.txt
Documentation	Tento test ná za úkol zjistit, zda lze zobrazit nejnovější událost na hlavní stránce.
Test Setup	Open Browser And Go To Page	${url}	${browser}
Test Teardown	Close All Browsers

*** Test cases ***
Zobrazení nejnovějšího článku na hlavní stránce
	Go To First Event	${event}	${firstEventLink}	${controlElement}	${controlElementCount}