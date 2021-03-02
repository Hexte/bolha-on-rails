class UserController < ApplicationController
  before_action :authorize_user!, only: [:edit, :update, :destroy]

  
  def index
    @user = User.find(params[:id])
  end

  def show
  end

  if Rails.env.production?
    rescue_from ActiveRecord::RecordNotFound, with: :render_404
  end
  
  def render_404
    redirect_to "/posts/"
  end
  
end
