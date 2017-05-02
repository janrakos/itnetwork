*** Settings ***
Library		Selenium2Library
Resource	../Keywords/semestralka_keywords.txt
Resource	../Settings/semestralka_settings.txt
Documentation	Cílem tohoto testu je ověřit, že lze ohodnotit jednotlivý článek a aplikace.
Test Setup	Open Browser And Go To Page	${url}	${browser}
Test Teardown	Close All Browsers

*** Test cases ***
Hodnoceni clanku a aplikace
		LogIn	${email}	${password}	${fullName}
		EstimateArticle		${sectionLink1}	${subsection1}	${subsectionLink1}	${articleTitle1}	${articleLink1}	${event1}	${event6}	${event2}	${event5}
