class OrdersController < ApplicationController

  def index
    @item = Item.find(params[:item_id])
    @order_address = OrderAddress.new
  end

  def new
    @order_address = OrderAddress.new
  end

  def create
    @order_address = OrderAddress.new(order_params)
    if @order_address.valid?
      pay_item
      @order_address.save
      return redirect_to root_path
    else
      render :index
    end
  end

  private

  def order_params
    params.require(:order_address).permit(:postal_code, :prefecture_id, :city, :house_number, :building_name, :telephone_nember).merge(user_id: current_user.id, order_id: @order.id)
  end

  #def address_params
    #params.permit(:postal_code, :prefecture, :city, :house_number, :building_name, :telephone_nember).merge(order_id: @order.id)
  #end

  def pay_item
    Payjp.api_key = "sk_test_ddfdfa9d06fd79d5395d88e1"
    Payjp::Charge.create(
      amount: order_address_params[:price],
      card: order_address_params[:token],
      currency: 'jpy'
    )
  end
end
