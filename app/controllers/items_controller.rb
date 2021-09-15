class ItemsController < ApplicationController
  def index
    @user = User.new
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def item_params
    params.require(:item, :image).permit(:item, :text, :category_id, :quality_id, :price, :delivery_free_id, :presence, :days_to_id).merge(user_id: current_user.id)
  end

end
