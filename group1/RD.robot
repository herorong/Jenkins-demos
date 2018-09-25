*** Setting ***
Library  SeleniumLibrary

*** Test Case ***
Not send rd online
  Open Browser  https://rdserver.rd.go.th/publish/index.php  gc
  Click Link  ยื่นแบบออนไลน์
  Select Frame  xpath=//*[@id="lightboxdialog"]/p/iframe
  Click Link   คลิก
  Select Window  กรมสรรพากร : ยื่นแบบผ่านอินเทอร์เน็ต
  Click Element  //*[@id="lightboxdialog"]/button
  Close Browser