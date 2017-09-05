class CartsController < ApplicationController
  before_action :set_cart, except: [:show]
  def show
    @items = @cart.items
  end

  def new_item
    @item = Item.find(params[:id])
  end

  def add_item
    @cart.items << Item.find(params[:id])
    redirect_to shops_path
  end

  def remove_item
    Item.find(params[:shop_id])
  end

  def purchase

  end

  private

  def set_cart
    @cart = Cart.find(params[:id])
  end
end
