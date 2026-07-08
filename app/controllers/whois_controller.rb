class WhoisController < ApplicationController

  def index
    submit = params[:hostname]
    if submit
      begin
        @hostname = submit 
        c =Whois.whois(@hostname)
        parser = c.parser
        @criado = parser.created_on
        @disponivel = parser.available?
        @datadecriacao = parser.registered?
        @dominio = parser.domain 
        @registar = parser.registrar
        @expires = parser.expires_on
        @nameserver = parser.nameservers
      rescue Whois::NoInterfaceError, Encoding::CompatibilityError, Whois::ServerNotFound 
        @error =  'Whois não foi encontrado  por favor procure por outro'
      end
    end
  end

end
