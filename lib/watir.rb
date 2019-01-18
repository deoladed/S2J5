require 'watir'
require 'pry'

abort("mkdir: missing input") if ARGV.empty?
search_name = ARGV.first
Dir.mkdir(folder_name)


browser = Watir::Browser.new(:firefox)
browser.goto 'google.com'
search_bar = browser.text_field(class: 'gsfi')
search_bar.set("search_name")
# Methode touche entree
# search_bar.send_keys(:enter)

#Methode clique la loupe 
submit_button = browser.button(type:"submit")
submit_button.click

#attendre le chargement
browser.driver.manage.timeouts.implicit_wait = 3

#on recup ce aue lon veut, les div
browser.div(class:"r").h3
p browser.div(class:"r").h3.text
search_result_divs = browser.divs(class:"rc")
search_result_divs.each { |div| p div.h3.text }

browser.close