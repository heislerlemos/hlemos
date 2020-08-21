class WelcomesController < ApplicationController
  require 'net/http'


  def index
  	 #@welcome = Welcome.all
  	 @subscriber =  Subscriber.new
     @ahoy = Ahoy::Visit.count
     #covid count
=begin    
    response = HTTParty.get('http://api.thevirustracker.com')

    puts response.code
    
    if response.code != 522

     @statistics = Covid19::GlobalStatistics.retrieve
     @angolastat =  Covid19::GlobalStatistics.by(country: 'ao')

   else 
    puts "no info covid at the moment" , notice: "At the moment we cannot have covid 19 info please try again later ."
  end
=end  
end

  
  def create 
  	@subscriber = Subscriber.new(subscriber_params)
  	if @subscriber.save
  		cookies[:saved_lead] = true
  		redirect_to root_path,  notice: "Saved Sucessfully"
   	else
   		redirect_to root_path, notice: "Failed save"
   end
end

	private 
	def subscriber_params
		params.require(:subscriber).permit(:name, :email, :source)
	end
end
