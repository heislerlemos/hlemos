class SubscribersController < ApplicationController
  def index
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