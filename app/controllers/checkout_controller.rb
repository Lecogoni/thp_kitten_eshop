class CheckoutController < ApplicationController

  def create
    puts "----------"
    puts "ok"
    puts "----------"
    @user = current_user
    @total = 5 #params[:total].to_d
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [
        { 
          name: 'Rails Stripe Checkout',
          amount: (@total*100).to_i,
          currency: 'eur',
          quantity: 1
         },
      ],
      success_url: checkout_success_url + '?session_id={CHECKOUT_SESSION_ID}',
      cancel_url: checkout_cancel_url
    )
    respond_to do |format|
      format.js # render create.js.erb
    end

    def success
      @session = Stripe::Checkout::Session.retrieve(params[:session_id])
      @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
    end

    def cancel
      @session = Stripe::Checkout::Session.retrieve(params[:session_id])
      @payment_intent = Stripe::PaymentIntent.retrieve(params[:session_id])
    end

  end
  
end
