*** Setting ***
Library  SeleniumLibrary

*** Variable ***
${Browser}=  gc
${URL}=  http://nervgh.github.io/pages/angular-file-upload/examples/simple/
${UploadFile}=  xpath=//input[@uploader='uploader'][1]
${filename}=  image/boy.jpg

***Test Case***
UploadTest
  Open Browser  ${URL}  ${Browser}

*** Keyword ***
Select File
  [Arguments]  ${filename}
  Click Element  ${UploadFile}
  Choose File  ${CURDIR}/${filename}
