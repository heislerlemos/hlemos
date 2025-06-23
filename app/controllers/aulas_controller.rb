class AulasController < ApplicationController
  include AulasHelper
  
  def index
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end
