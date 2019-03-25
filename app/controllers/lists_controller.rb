class ListsController < ApplicationController
before_action :get_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def show

  end

  def new
    @list = List.new
    render :new
  end

  def create
    @list = List.create(list_params)
    redirect_to list_path(@list)
  end

  def edit

  end

  def update
    @list.update(list_params)
    redirect_to list_path(@list)
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private

  def get_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :task_complete, :event_id)
  end

end
