*** Setting ***
Library  calculator.py

***Test Case***
Add
  ${result}=  Add  ${2}  ${3}
  Log to console  ${result}
  Should Be Equal  ${5}  ${result}
  Should Be Equal As Integers  5  ${result}