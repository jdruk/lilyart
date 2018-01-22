class PageController < ApplicationController
  def index
    @items = Item.where( status: 1, featured_product: true )
  end
end
