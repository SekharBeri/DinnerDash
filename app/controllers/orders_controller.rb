class OrdersController < ApplicationController
  
  def store
    if request.post?
      @item = Item.find(params[:item_id])
      @order =Order.new
      
    end
  end
end
