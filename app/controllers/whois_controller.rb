class WhoisController < ApplicationController
  def index
  submit = params[:hostname]

  if submit
  @hostname = submit 
  c = Whois::Client.new
  
  @result = c.lookup(@hostname)
 
    end
  end
end
