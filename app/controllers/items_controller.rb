class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @user = User.new
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def item_params
    params.require(:item).permit(:item, :text, :category_id, :quality_id, :price, :delivery_free_id, :prefecture_id, :days_to_id,
                                 :image).merge(user_id: current_user.id)
  end
end
