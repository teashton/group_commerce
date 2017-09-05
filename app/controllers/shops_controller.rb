class ShopsController < ApplicationController
before_action :set_shop, except: [:new, :create, :index]

  def index
    @shops = Shop.all
  end

  def show
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)

    if @shop.save
      redirect_to @shop
    else
      render :new
    end
  end

  def update
    @shop = Shop.update(shop_params)

    if @shop.update
      redirect_to @shop
    else
      render :edit
    end
  end

  def edit
  end

  def destroy
    @shop.destroy
    redirect_to shops_path
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:name)
  end
end
