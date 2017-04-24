*** Settings ***
Library		Selenium2Library
Resource	../Keywords/semestralka_keywords.txt
Resource	../Settings/semestralka_settings.txt
Documentation	Cílem tohoto testu je ověřit, zda lze vytvořit nové vlákno v diskuzním fóru.
Test Setup	Open Browser And Go To Page	${url}	${browser}
Test Teardown	Close All Browsers

*** Test cases ***
Přihlášení a vytvoření nového vlákna na fóru
	LogIn	${email}	${password}	${fullName}
	Create New Thread In Java Section	${image}	${forumSectionLink}	${threadTitle}	${threadMessage}