class WhoisController < ApplicationController
  def index
  @hostname = "google.com".downcase

  if params[:hostname]
  c = Whois::Client.new
  
  @result = c.lookup(@hostname).to_s
  

  end

  end
end
