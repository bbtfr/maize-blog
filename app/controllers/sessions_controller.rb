class SessionsController < ApplicationController
  skip_before_filter :authenticate, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.where(email: params[:user][:email]).first
    if @user && @user.authenticate(params[:user][:password])
      sign_in @user
      redirect_to root_path
    else
      redirect_to sign_in_path
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
