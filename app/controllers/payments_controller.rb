class PaymentsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @user = current_user
    token = params[:stripeToken]

    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
      amount: (@product.price*100).to_i, #amount in cents
      currency: "gbp",
      source: token,
      description: params[:stripeEmail],
      receipt_email: params[:stripeEmail]
      )
      if charge.paid
        Order.create(
        product_id: @product.id,
        user_id: @user&.id,
        total: @product.price.to_i)

        UserMailer.order_placed(params[:stripeEmail], @product, @user).deliver_now
        flash[:success] = "Your payment was processed successfully. Thank you for purchasing #{@product.name}"
      end

    rescue Stripe::CardError => e
      # The card has been charged
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
    end
    redirect_to product_path(@product)
  end
end
