class GroupsController < ApplicationController

  def new
    @group = Group.new
    render :new
  end

end
