class WhoisController < ApplicationController

  def index
    submit = params[:hostname]
    if submit
      begin
      @hostname = submit 
      c = Whois::Client.new
      c.lookup(@hostname)
      result = c.lookup(@hostname).to_s
      @forceencod = result.force_encoding "ASCII-8BIT" 

      rescue Whois::NoInterfaceError, Encoding::CompatibilityError, Whois::ServerNotFound 
      @error =  'Whois não foi encontrado  por favor procure por outro'
      end
    end
  end

end
