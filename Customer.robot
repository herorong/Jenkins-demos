*** Variables ***
&{user_info_1}=  email=watcharathon@qnet.net
  ...  mobile_no=0917374751234324324234324

*** Test Cases ***
Test1
  &{user_info}=  Create Dictionary
  ...  email=sirrong12222221@gmail.com
  ...  mobile_no=019323432432345435345
  Fill in customer information  ${user_info}

*** Keywords ***
Fill in customer information
  [Arguments] ${user_info}
  Log to console  ${user_info.email}s