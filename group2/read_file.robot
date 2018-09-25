*** Settings ***
Library  CsvLibrary.py

*** Test Cases ***
Try to write dictionary data to csv file
  [Tags]  write
  &{user_info}=  Create Dictionary
  ...  email=sirrong11@hotmail.com
  ...  mobile_no=0917374751
  ...  IDNO=111222333
  @{all_data}=  Create List
  ...  ${user_info}
  ...  ${user_info}
  ...  ${user_info}
  Write Data  ${user_info}

Try to read from user.csv with for loop
  [Tags]  read
  ${users}=  Read Data  user.csv
  :FOR  ${data}  IN  @{users}
  \  Log to console  ${data[0]}=${data[1]}

Try to read fron user.csv
  ${users}=  Read Data  user.csv
  Log to console  User=${users[0][0]}
  Log to console  Pass=${users[0][1]}