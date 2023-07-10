# coding: utf-8
class SubscribersController < ApplicationController
  http_basic_authenticate_with name: "cai", password: "cai2021luanda", except: [:index, :create]

  def index
    @subscriber =  Subscriber.new

  end
  def create 
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      cookies[:saved_lead] = true
      redirect_to root_path, notice: "Formulario submetido com sucesso, guarde o seu numero de ticket: [#{ @subscriber.id}], a nossa equipa técnica entrará em contacto consigo num prazo de 24h ou envie um sms para os seguintes numeros: 934 659 342 - 942 869 655 - 923 957 488 "
    else
      redirect_to root_path, error: "Erro no formulario por favor volte a submeter"
    end
  end

  def show

    @subscriber = Subscriber.all.order("created_at DESC")

    if params[:search]

      @subscriber =  Subscriber.search(params[:search]).order("created_at DESC")
    end



  end
  private 
  def subscriber_params
    params.require(:subscriber).permit(:name, :email, :source, :number,:subject, :issue)
  end

end
