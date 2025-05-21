class WhoisController < ApplicationController
  def index
  submit = params[:hostname]

  if submit
  @hostname = submit 
  c = Whois::Client.new
  c.lookup(@hostname)
  
  enc = c.lookup(@hostname).to_s
  @result = enc.encode('ASCII-8BIT')
    
    end
  end
end
