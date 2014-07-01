# -*- coding:utf-8 -*-

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

driver.navigate.to "http://google.com"

driver.quit
