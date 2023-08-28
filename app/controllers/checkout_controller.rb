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
    @order = Order.create!(address: params[:address], email: params[:email],
                           postalCode: params[:postal], gst: params[:gst], pst: params[:pst],
                           grandTotal: params[:grandtotal], subTotal: params[:subtotal], credit: params[:cc])

    @order.orderStatus = 'Recieved'
    a.orders << @order

    @cart.orderables.each do |o|
      oi = OrderItem.create!(product: Product.find_by(id: o.product_id), quantity: o.quantity, price: o.product.price)
      @order.order_items << oi
      puts o.product
    end
    redirect_to root_path, notice: 'Order Confirmed, receipt added to account.'
  end
end
