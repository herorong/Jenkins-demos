*** Variables ***
&{user_info_1}=  email=watcharathon@qnet.net
  ...  mobile_no=0917374751

*** Test Cases ***
Test1
  &{user_info}=  Create Dictionary
  ...  email=sirrong11@gmail.com
  ...  mobile_no=019323432432
  Fill in customer information  ${user_info}

*** Keywords ***
Fill in customer information
  [Arguments] ${user_info}
  Log to console  ${user_info.email}
  Log to console  ${user_info.mobile_no}