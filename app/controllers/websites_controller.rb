class WebsitesController < ApplicationController
def index

	require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://covid-19-coronavirus-statistics.p.rapidapi.com/v1/total?country=Angola")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = '29c3021e3fmsh4bb90e57a82792dp148dfejsn8e108d9a1eed'
request["X-RapidAPI-Host"] = 'covid-19-coronavirus-statistics.p.rapidapi.com'

response = http.request(request)
@responseapi = response.read_body
puts @responseapi

end
end
