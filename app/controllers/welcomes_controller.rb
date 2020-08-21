class WelcomesController < ApplicationController
  require 'net/http'


  def index
  	 #@welcome = Welcome.all
  	 @subscriber =  Subscriber.new
     @ahoy = Ahoy::Visit.count
     #covid count

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

  
  def create 
  	@subscriber = Subscriber.new(subscriber_params)
  	if @subscriber.save
  		cookies[:saved_lead] = true
  		redirect_to root_path,  notice: "Gravado com sucesso"
   	else
   		redirect_to root_path, notice: "Falhou na gravação por favor tente de novo"
   end
end

	private 
	def subscriber_params
		params.require(:subscriber).permit(:name, :email, :source)
	end
end
