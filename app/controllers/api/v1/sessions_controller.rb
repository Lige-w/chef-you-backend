class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])
    render json: @user
  end
end
