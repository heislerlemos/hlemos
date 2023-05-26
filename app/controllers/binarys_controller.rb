class BinarysController < ApplicationController
   def index
   @hostname = "127.0.0.1".downcase
   submitted_hostname = params[:hostname]
   	if submitted_hostname 
    	@hostname = submitted_hostname
   	ip = IPAddress::IPv4.new @hostname
   	@bits = ip.bits
   	@mask = ip.netmask
   	@ipv6 = ip.to_ipv6 
   	end

  

   end
end
