# frozen_string_literal: true

class CheckoutController < ApplicationController
  def new
    if session[:accountId]
      @account = Account.find_by(id: session[:accountId])
    else
      @account = nil
      redirect_to sign_in_path, alert: 'Log in before checkout.'
    end
  end

  def create
    puts params
    @account = Account.find_by(id: session[:accountId])
    puts @account.name
  end
end
