class ItemsController < ApplicationController
  def index
    @user = User.new
  end

  def new
    @item = Item.new
  end

  def create
  end
end
