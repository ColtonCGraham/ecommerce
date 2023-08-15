class SessionsController < ApplicationController

  def new

  end

  def create
    user = Account.find_by(name: params[:name], password: params[:password])
    if user.present?
      puts user.password
      session[:accountId] = user.id
      redirect_to root_path, notice: "Logged in successfully."
    else
      flash.now[:alert] = "Invalid email or password"
      render :new
    end
  end

  def destroy
    session[:accountId] = nil
    @account = nil
    redirect_to root_path, notice: "Logged out."

  end
end