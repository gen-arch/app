require 'open-uri'
require 'nokogiri'
# require 'capybara'

url = "https://www.jalan.net/130000/LRG_136200/SML_136205/?stayYear=&stayMonth=&stayDay=&dateUndecided=1&stayCount=1&roomCount=1&adultNum=2&minPrice=0&maxPrice=999999&mealType=&roomSingle=1&kenCd=130000&lrgCd=136200&smlCd=136205&distCd=01&roomCrack=200000&reShFlg=1&mvTabFlg=0&listId=0&screenId=UWW1402"

# session = Capybara::Session.new(:poltergeist)
# session.visit url
# source = session.body

doc = Nokogiri.HTML(open(url))

a = doc.css('.dpPanel > .search-result-cassette > .result-body > .hotel-planlist-link > a')
puts a
a.each {|href| p href.attribute('href')}
