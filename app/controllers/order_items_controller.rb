class OrderItemsController < ApplicationController
#  protect_from_forgery with: :null_session
  def create
    @order = current_order
    @order_item  = @order.order_items.new(order_params)
    @order.save

    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_params)
    @order_items = current_order.order_items

  end 
  

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = current_order.order_items

  end 
  private

  def order_params
   params.require(:order_item).permit(:product_id  , :quantity, :unit_price , :total)
  end
end
