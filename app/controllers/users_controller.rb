class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @attended_events = @user.attended_events
    @events = @user.events
  end
end
