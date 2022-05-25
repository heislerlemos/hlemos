class SuportesController < ApplicationController

require 'rubygems'
require 'dnsruby'
include Dnsruby

 
def index
    # Default values
  @hostname = "cai.co.ao"
  
  
  @output = []
  @queryoutput = []
  @queryoutputmx = []
  @queryoutputcn = []
  submitted_hostname = params[:hostname]


  if submitted_hostname
    @hostname = submitted_hostname
     
    begin
    resolver = Resolver.new(nameserver: @hostname)
    
    # Getting cname resolver

    rec = Recursor.new
    ret = rec.query(@hostname, "CNAME")
    @cnm = ret.answer




    @output = resolver.single_resolvers
       # working on query
    @mxrecord = "MX"
    @nsrecord = "NS"
  
    res = Resolver.new
    
    queryresolver = res.query(@hostname , @nsrecord )


   rescue   Dnsruby::NXDomain
      @nohost = "Can't find host | Certifique que o host encontra-se disponivel"
   
   else
    
    queryresolvermx = res.query(@hostname,   @mxrecord )
      @queryoutput =   queryresolver.answer
      @queryoutputmx = queryresolvermx.answer
    
    end

    
  end



 
  
   
 end


end
