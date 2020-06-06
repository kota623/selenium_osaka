require 'selenium-webdriver'

@wait_time = 3
@timeout = 4

# Seleniumの初期化
# class ref: https://www.rubydoc.info/gems/selenium-webdriver/Selenium/WebDriver/Chrome
Selenium::WebDriver.logger.output = File.join("./", "selenium.log")
Selenium::WebDriver.logger.level = :warn
driver = Selenium::WebDriver.for :chrome
driver.manage.timeouts.implicit_wait = @timeout
wait = Selenium::WebDriver::Wait.new(timeout: @wait_time)

# 大阪コロナ追跡システム URL
driver.get('https://')

# emailを入力する。
driver.find_element(:id, 'email').send_keys 'email_address'
# email(確認用)を入力する。
driver.find_element(:id, 'email_confirmation').send_keys 'email_address'

#　チェックボックスにチェックを入れる。
driver.find_element(:id, 'check').click
# 登録を押す
driver.find_element(:id, 'submit').click

# 確認の為、登録後5秒間待機。
sleep 5
