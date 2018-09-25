*** Settings ***
Library  CsvLibrary.py

*** Test Cases ***
Try to read from user.csv with for loop
  [Tags]  testing
  ${users}=  Read Data  number.csv
  Log to console  ${users}