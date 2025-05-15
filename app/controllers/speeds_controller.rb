class SpeedsController < ApplicationController
require 'speedtest/speedtest'


def index
submit = params[:empty]
if submit
  loading = "Estamos a verificar a connexao de speedtest por favor aguarde um momento"
    
  stored = []

  speed = Speedtest::SpeedTest.new(ARGV)
  speed.run.each do |x,y|
    print "#{x} :  #{y}"
    value = "#{x} : #{y}"
    stored.append(value)
  end
  
  @output = stored



end
end

end

