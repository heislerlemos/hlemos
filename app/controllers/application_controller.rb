class ApplicationController < ActionController::Base
before_action  :data_analise

def data_analise
	    #@globalvisits = Ahoy::Visit.count
   #@welcome = Welcome.all
     @subscriber =  Subscriber.new
     #covid count
     @ahoy = Ahoy::Visit.count
end



end


