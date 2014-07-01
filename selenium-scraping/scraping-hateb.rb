# -*- coding:utf-8 -*-

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

driver.navigate.to "http://b.hatena.ne.jp/"
element = driver.find_element(:name, "q")
element.send_keys("selenium ruby")
element.submit


puts driver.title
elements = driver.find_elements(:xpath, '//*[@id="search-result-lists"]/ul')
elements.each do |elem| 
  puts elem.find_element(:tag_name, 'h3').text
end

sleep 1
driver.quit
