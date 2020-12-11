class ApplicationController < ActionController::Base
before_action  :data_analise
 include Pagy::Backend
def client

  @client ||= Hackernews::Client.new

end



def data_analise
	    #@globalvisits = Ahoy::Visit.count
   #@welcome = Welcome.all/virus/index
     @subscriber =  Subscriber.new
     #covid count
     @ahoy = Ahoy::Visit.count
end



end
