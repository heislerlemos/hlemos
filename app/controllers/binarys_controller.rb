class BinarysController < ApplicationController
   def index
   @hostname = "127.0.0.1".downcase
   submitted_hostname = params[:hostname]
   	if submitted_hostname 
    	@hostname = submitted_hostname
   	ip = IPAddress::IPv4.new @hostname
   	bits = ip.bits
   	[8 , 19 , 30 ].each do 
		|i| bits.insert i, ' . ' 
	end
	@bits = bits
   	@mask = ip.netmask
   	@ipv6 = ip.to_ipv6 
   	end

  

   end
end
