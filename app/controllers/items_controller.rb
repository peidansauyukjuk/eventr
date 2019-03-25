class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(:name)
  end

end
