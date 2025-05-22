class WhoisController < ApplicationController

  def index
    submit = params[:hostname]
    if submit
      @hostname = submit       
      c = Whois::Client.new
      c.lookup(@hostname).to_s
      @result = c.lookup(@hostname)
   end
  end

end
