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
      stored = [] 
      @bits = bits
      @mask = ip.netmask
      @ipv6 = ip.to_ipv6



      32.downto(1) do |i|
        print " " + ipsubnet.cidr(i)
        stored.append(ipsubnet.cidr(i))
      end

      @ipsub =  stored 

    end

  end
end
