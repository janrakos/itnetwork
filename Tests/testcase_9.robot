﻿*** Settings ***
Library		Selenium2Library
Resource	../Keywords/semestralka_keywords.txt
Resource	../Settings/semestralka_settings.txt
Documentation	Cílem tohoto testu je ověřit, zda se správně zobrazí konkrétní požadovaný článek a první událost na hlavní stránce.
Test Setup	Open Browser And Go To Page	${url}	${browser}
Test Teardown	Close All Browsers

*** Test cases ***
Zobrazení konkrétního článku
	Go To Article	${sectionLink}	${subsection}	${subsectionLink}	${articleTitle}	${articleLink}
	Location Should Contain		${url}/${articleLink}
	
Zobrazení nejnovějšího článku na hlavní stránce
	Go To First Event	${event}	${firstEventLink}	${controlElement}