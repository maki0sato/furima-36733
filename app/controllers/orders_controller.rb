class OrdersController < ApplicationController

  def index
    @item = Item.find(params[:item_id])
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    Address.create(address_params)
    if @order.valid?
      pay_item
      @order.save
      return redirect_to root_path
    else
      render :index
    end
  end

  private

  def order_params
    params.require(:order).merge(params[:item_id], user_id: current_user.id, token: params[:token])
  end

  def address_params
    params.permit(:postal_code, :prefecture, :city, :house_number, :building_name, :telephone_nember).merge(order_id: @order.id)
  end

  def pay_item
    Payjp.api_key = "sk_test_ddfdfa9d06fd79d5395d88e1"
    Payjp::Charge.create(
      amount: order_params[:price],
      card: order_params[:token],
      currency: 'jpy'
    )
  end
end
