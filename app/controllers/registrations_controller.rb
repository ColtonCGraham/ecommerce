# frozen_string_literal: true

class RegistrationsController < ApplicationController
  def new
    @account = Account.new
  end

  def create
    flash.clear
    p = Province.find(params.dig(:province, :provinceId))

    accDetails = params.dig(:province, :account)
    @account = Account.new(name: accDetails[:name], password: accDetails[:password],
                           postalCode: accDetails[:postalCode], province: p)
    p.accounts << @account

    if @account.save
      session[:accountId] = @account.id
      redirect_to root_path, notice: 'Success! Account receipt has been e-mailed.'
    else
      flash.now[:alert] = 'Something went wrong, please correct the following...'
      render :new
    end
  end
end
