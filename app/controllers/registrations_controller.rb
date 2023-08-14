class RegistrationsController < ApplicationController

  def new
    @account = Account.new
  end

  def create

    p = Province.find(params.dig(:province, :provinceId))

    accDetails = params.dig(:province,:account)
    @account = Account.new(name: accDetails[:name], postalCode: accDetails[:postalCode], province: p)
    p.accounts << @account

    if(@account.save)
      redirect_to root_path, notice: "Success! Account receipt has been e-mailed."
    else
      flash[:alert] = "something went wrong, please verify information..."
      render :new
    end


  end


end

