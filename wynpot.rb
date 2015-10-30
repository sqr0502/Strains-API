
require 'httparty'
require 'rubygems'
require 'json'

url = "https://smokereports.com/api/v1.0/strains?page"

WYNPOT = 'httparty'

response = HTTParty.get(url, headers: {"3bf75b604ca328fa132c4db2f7e875fe3356e981" => WYNPOT})

json_data = JSON.parse(response.body)

json_data['data'].each do |strain|
puts strain["name"]
end

# __END__
# puts strain["url"]
# puts strain["reviews"]
# puts strain["images"]
