# selenium_osaka

 

大阪コロナ追跡システムのメールアドレス登録をある程度自動化するものです。 

 

 

# Requirement



\* ruby 2.6.3

*selenium-webdriver(gem)

\* chromedriver (chromeのversionに基づく)

*googlechrome



## DEMO



* QRから読み込んだURLを入力してください。

driver.get('https://')



* email_addressの部分を自身のアドレスに書き換えてください。

driver.find_element(:id, 'email').send_keys 'email_address'

* email_addressの部分を自身のアドレスに書き換えてください。

driver.find_element(:id, 'email_confirmation').send_keys 'email_address'