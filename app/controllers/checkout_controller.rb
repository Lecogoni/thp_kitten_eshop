class CheckoutController < ApplicationController

  def create

    @cart = @cart
    @items = @cart.line_items.to_a
   
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

      @new_order = Order.new(user_id: current_user.id)
      @new_order.save

      @cart = @cart
      @items = @cart.line_items.to_a
      
      @items.each do |item|
        @new_line_order = LineOrder.new(order_id: @new_order.id, product_id: item.product_id, quantity: item.quantity)
        @new_line_order.save
      end

      @cart.destroy

      respond_to do |format|
        format.html { redirect_to carts_url, notice: "Your payment is ok ! Maiouuu !!!" }
        format.json { head :no_content }
      end
      
      def cancel
        @session = Stripe::Checkout::Session.retrieve(params[:session_id])
        @payment_intent = Stripe::PaymentIntent.retrieve(params[:session_id])
      end

    end

  end
  
end
