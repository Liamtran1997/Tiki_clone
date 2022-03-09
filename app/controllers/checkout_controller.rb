class CheckoutController < ApplicationController

  def create
    @cart = Cart.find(params[:id])
    @session = Stripe::Checkout::Session.create({
                                                  payment_method_types: ['card'],
                                                  success_url: root_path,
                                                  cancel_url: root_path,
                                                  line_items: [
                                                    { cart: @cart.line_items.id,
                                                      total: @cart.total_price,
                                                      currency: 'usd',
                                                    }
                                                  ],
                                                  mode: 'payment',
                                                })
    # respond_to do |f|
    #   f.js
    # end
  end
end
