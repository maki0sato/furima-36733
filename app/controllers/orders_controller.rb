class OrdersController < ApplicationController

  def create
    @item = Item.find(params[:id])
    @order = Order.new(order_params)
    if @order.valid?
      @order.save
      return redirect_to root_path
    else
      render :order
    end
  end

  private

  def order_params
    params.require(:order).merge(params[:item_id] , user_id: current_user.id)
  end
end
