class SpeedsController < ApplicationController
  begin
  require 'speedtest/speedtest'
  rescue Zeitwerk::NameError
  end  
  def index
    submit = params[:empty]
    if submit

      loading = "Estamos a verificar a connexao de speedtest por favor aguarde um momento"
      begin     
        stored = []
        speed = Speedtest::SpeedTest.new(ARGV)
        speed.run.each do |x,y|
          puts "#{x} =>  #{y}"
          value = "#{x} =>  #{y}"
          stored = stored.append(value)
        end

        @output = stored

      rescue Net::HTTP::Persistent::Error || Net::OpenTimeout 
        @erro =  'Erro de por favor volte a confirmar se o problema persistir verifique a configuração da  sua rede'
      end
    end
  end

end

