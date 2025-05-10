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

      ipsubnet   = Ip.new @hostname
      ipsubstore = []
      @bits = bits
      @mask = ip.netmask
      @ipv6 = ip.to_ipv6
      
      32.downto(1) do |i|
        print "   " + ipsubnet.cidr(i)
        ipsubstore = ipsubnet.cidr(i)
       end
         @ipsub = ipsubstore     
      
    end

  end
end
