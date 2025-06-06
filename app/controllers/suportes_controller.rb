class SuportesController < ApplicationController

  require 'rubygems'
  require 'dnsruby'
  include Dnsruby
  require "openssl"

  def index
    # Default values
    @hostname = "google.com".downcase


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

        rec = Resolver.new

        ret = rec.query(@hostname, "CNAME")
        @queryoutputcn = ret.answer

        @output = resolver.single_resolvers
        # working on query
        @mxrecord = "MX"
        @nsrecord = "NS"

        res = Resolver.new

        queryresolver = res.query(@hostname , @nsrecord )




      rescue NoMethodError,  Dnsruby::NXDomain #  ActionView::Template::Error 
        # no name error must be checked to add at the rescue error for the  NoMethodError (undefined method `answer' for nil:NilClass):


        unless  @hostname.length < 15 

          @nohost = "Registo CNAME encontrado"
        else

          @nohost = "Certifique que o host encontra-se disponivel !"

        end

      else

        queryresolvermx = res.query(@hostname,   @mxrecord )
        @queryoutput =   queryresolver.answer
        @queryoutputmx = queryresolvermx.answer


      end

    end

  end
end
