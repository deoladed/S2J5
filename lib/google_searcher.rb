require 'watir'
require 'pry'

abort("mkdir: missing input") if ARGV.empty?
search_name = ARGV.first
require 'launchy'

Launchy.open("www.google.com/search?q=#{search_name.tr(" ", "+")}")

# browser = Watir::Browser.new(:firefox)
# browser.goto "www.google.com/search?q=#{search_name.tr(" ", "+")}"
# search_bar = browser.text_field(class: 'gsfi')
# search_bar.set(search_name)
# Methode touche entree
# search_bar.send_keys(:enter)

# #Methode clique la loupe 
# submit_button = browser.button(type:"submit")
# submit_button.click

# #attendre le chargement
# browser.driver.manage.timeouts.implicit_wait = 3