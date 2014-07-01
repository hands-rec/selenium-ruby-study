# -*- coding:utf-8 -*-

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

driver.navigate.to "http://google.com"
element = driver.find_element(:name, "q")
element.send_keys("selenium ruby")
element.submit

puts driver.title
sleep 1
driver.quit
