class RegistrationsController < ApplicationController


  def create

    p = Province.find(params.dig(:province, :provinceId))

    accDetails = params.dig(:province,:account)
    acc = Account.new(name: accDetails[:name], postalCode: accDetails[:postalCode], province: p)
    p.accounts << acc

    if(acc.save)
      redirect_to root_path, notice: "Success! Account receipt has been e-mailed."
    else
      flash[:alert] = "something went wrong, please verify information..."
    end


  end


end

