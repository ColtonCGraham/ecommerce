# frozen_string_literal: true

class CartController < ApplicationController
  def show
    @render_cart = false
  end

  def add
    @product = Product.find_by(id: params[:id])
    quantity = params[:quantity].to_i
    current_orderable = @cart.orderables.find_by(product_id: @product.id)

    if current_orderable && quantity.positive?
      current_orderable.update(quantity:)
    elsif quantity <= 0
      current_orderable.destroy
    else
      @cart.orderables.create(product: @product, quantity:)
    end

    redirect_back_or_to root_path
  end

  def remove
    Orderable.find_by(id: params[:id]).destroy

    redirect_back_or_to root_path
  end
end
