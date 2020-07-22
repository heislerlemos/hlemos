class WelcomesController < ApplicationController
  def index
  	 #@welcome = Welcome.all
  	 @subscriber =  Subscriber.new
     @ahoy = Ahoy::Visit.count
     #covid count
     #@statistics = Covid19::GlobalStatistics.retrieve
     #@angolastat =  Covid19::GlobalStatistics.by(country: 'ao')


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
