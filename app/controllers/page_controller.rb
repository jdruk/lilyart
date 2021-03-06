class PageController < ApplicationController
  def index
    @items = Item.where( status: 1, featured_product: true )
    @categories = Category.all
  end

  def show
    @item = Item.friendly.find(params[:name])
  end
end
