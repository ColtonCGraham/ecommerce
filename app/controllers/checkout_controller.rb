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


    a = Account.find_or_create_by(id: session[:accountId])
    @order = Order.create!( address: params[:address],email: params[:email],
                           postalCode: params[:postal])
    a.orders << @order

    @cart.orderables.each do |o|
      oi = OrderItem.create!(product_id: o.product, quantity: o.quantity, price: o.product.price )
      @order.order_items << oi
     end
     redirect_to root_path, notice: 'Order Confirmed, receipt added to account.'
  end
end
