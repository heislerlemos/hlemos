class SubscribersController < ApplicationController

  	  http_basic_authenticate_with name: "cai", password: "cai2021luanda", except: [:index ]

  def index
    @subscriber =  Subscriber.new

  end
    def create 
  	@subscriber = Subscriber.new(subscriber_params)
  	if @subscriber.save
  		cookies[:saved_lead] = true
  		redirect_to root_path
   	else
   		redirect_to root_path
   end
    end

    def show
      @subscriber = Subscriber.all.order("created_at DESC")

    end
	private 
	def subscriber_params
		params.require(:subscriber).permit(:name, :email, :source, :number,:subject, :issue)
	end

end
