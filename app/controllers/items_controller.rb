class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    @list = List.find(params[:item][:list_id])
    if @item.valid?
      @list.items << @item
      redirect_to @list
    else
      render list_path(@list)
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
