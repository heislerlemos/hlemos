class BinarysController < ApplicationController
  def index

    @hostname = "192.168.10.0/24".downcase
    submitted_hostname = params[:hostname]

    if submitted_hostname 
      @hostname = submitted_hostname
      ip = IPAddress::IPv4.new @hostname
      bits = ip.bits
      [8 , 19 , 30 ].each do 
        |i| bits.insert i, ' . ' 
      end

      stored = [] 
      @bits = bits
      @mask = ip.netmask
      @ipv6 = ip.to_ipv6
      @ipsub =  stored 
      @firsthost = ip.first.to_s
      @lasthost = ip.last.to_s
    end

  end
end
