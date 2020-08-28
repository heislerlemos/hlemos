class WelcomesController < ApplicationController
  require 'net/http'



  def index


  
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
		params.require(:subscriber).permit(:name, :email, :source , :number)
	end
end
