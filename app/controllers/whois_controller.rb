class WhoisController < ApplicationController

  def index
    submit = params[:hostname]
    if submit
      @hostname = submit 
      c = Whois::Client.new
      c.lookup(@hostname)
      @result = c.lookup(@hostname).to_s
      puts @result.encoding
    end
  end

end
