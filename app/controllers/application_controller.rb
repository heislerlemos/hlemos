class ApplicationController < ActionController::Base
before_action  :data_analise

def data_analise
	    #@globalvisits = Ahoy::Visit.count
   #@welcome = Welcome.all
     @subscriber =  Subscriber.new
     #covid count
          @ahoy = Ahoy::Visit.count

    response = HTTParty.get('http://api.thevirustracker.com')
    # Teste access 

    puts "At the moment covid server is #{response.code}"
    
    if response.code == 200

     @statistics = Covid19::GlobalStatistics.retrieve
     @angolastat =  Covid19::GlobalStatistics.by(country: 'ao')

   else 
    puts "no info covid at the moment" , notice: "At the moment we cannot have covid 19 info please try again later ."
  end
end



end


