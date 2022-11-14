require 'dotenv/load'
require 'rakuten_web_service'
 
RakutenWebService.configure do |c|
  c.application_id = ENV['RAKUTEN_APP_ID']
end
 
items = RakutenWebService::Ichiba::Item.search(:keyword => 'レモンサワー') # This returns Enamerable object
items.first(10).each do |item|
  puts "#{item['itemName']}, #{item.price} yen" # You can refer to values as well as Hash.
  puts "#{item['itemUrl']} #{item['smallImageUrls'][0]} #{item['itemPrice']} "
end
