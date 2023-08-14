class RegistrationsController < ApplicationController
  def new
    @account = Account.new
  end
end