module CurrentCart

  private

  def set_cart
    if user_signed_in? == false
      @card == nil 
    elsif user_signed_in? == true 
      @cart = Cart.find_by(id: current_user.id) || Cart.create(id: current_user.id)
    end
  end

  
end



# def set_cart
# rescue ActiveRecord::RecordNotFound
# @cart = current_user.carts.find_by(id: current_user.id) || current_user.carts.create
# current_user.id = @cart.id
# end
