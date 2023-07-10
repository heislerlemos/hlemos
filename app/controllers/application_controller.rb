class ApplicationController < ActionController::Base
  add_flash_types :info, :error, :warning , :notice
  before_action  :data_analise
  include Pagy::Backend
  include ApplicationHelper
  def client

    @client ||= Hackernews::Client.new

  end



  def data_analise
    #@globalvisits = Ahoy::Visit.count
    #@welcome = Welcome.all/virus/index
    @subscriber =  Subscriber.new
    #covid count
    @ahoy = Ahoy::Visit.count
  end





end
