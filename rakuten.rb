require 'dotenv/load'
require 'rakuten_web_service'
 
RakutenWebService.configure do |c|
  c.application_id = ENV['RAKUTEN_APP_ID']
end
 
items = RakutenWebService::Ichiba::Item.search(:keyword => 'レモンサワー')
items.first(10).each do |item|
  puts "#{item['itemName']}, #{item['itemPrice']}  yen"
  puts "#{item['itemUrl']} #{item['smallImageUrls'][0]} "
end
