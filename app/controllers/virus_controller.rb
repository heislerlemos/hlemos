class VirusController < ApplicationController
  def index
  	   response = HTTParty.get('http://api.thevirustracker.com')

    puts "At the moment covid server is #{response.code}"
    puts "At the moment covid server is #{response.body}"

    if response.body == "maintaining"



@nostatus = "no info covid at the moment"

else if  response.code  == 400 ||  response.code  == 404 ||  response.code  == 401 ||  response.code  == 500

    @nostatus = "Não existe informação de momento "

else

         statistics = Covid19::GlobalStatistics.retrieve
         @totalcases = JSON.parse(statistics)["results"].first["total_cases"]
         @totalrecoverd = JSON.parse(statistics)["results"].first["total_recovered"]
         @totaldeaths = JSON.parse(statistics)["results"].first["total_deaths"]
     # Nacional
         angolaestatica = Covid19::GlobalStatistics.by(country: 'ao')
         @totalcasesangola  = JSON.parse(angolaestatica)["countrydata"].first["total_cases"]
         @totalrecoverdangola = JSON.parse(angolaestatica)["countrydata"].first["total_recovered"]
         @totaldeathsangola =  JSON.parse(angolaestatica)["countrydata"].first["total_deaths"]
       @news = Covid19::News.retrieve
         puts statistics.class

         portugalcovid =  Covid19::GlobalStatistics.by(country: 'pt')
         @portugalestado = JSON.parse(portugalcovid)["countrydata"].first["total_cases"]
         @portugalmortes = JSON.parse(portugalcovid)["countrydata"].first["total_deaths"]
         @portugarecuperados = JSON.parse(portugalcovid)["countrydata"].first["total_recovered"]



         brazilcovid =  Covid19::GlobalStatistics.by(country: 'br')
         @brazilestado = JSON.parse( brazilcovid )["countrydata"].first["total_cases"]
         @brazilmorte = JSON.parse( brazilcovid )["countrydata"].first["total_deaths"]
         @brazilrecuperados = JSON.parse( brazilcovid )["countrydata"].first["total_recovered"]


    # Para verificar a info
    puts "---------------------------------"
    puts "---------------------------------"
        puts "valores do mundo #{statistics}"
        puts "---------------------------------"
        puts "---------------------------------"

        puts "valores de angola #{angolaestatica}"
        puts "---------------------------------"
        puts "---------------------------------"

        puts "valores de portugal #{portugalcovid }"
        puts "---------------------------------"
        puts "---------------------------------"

        puts "valores do brazil #{brazilcovid}"
        puts "---------------------------------"
        puts "---------------------------------"

  end
  end
end
end
