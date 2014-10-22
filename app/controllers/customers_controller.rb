class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def new
  end

  def create
    @customer = Customer.create(user_params)
    if @customer.save
      # redirect_to restaurants_path
      redirect_to customer_get_credit_card_path(@customer.id)
    else
      redirect_to root_url :notice => "already exists"
    end
  end

  def show
    @customer = Customer.find_by_id(params["id"])
  end

  def get_credit_card
  end

  def save_credit_card
    #set the api key
    Stripe.api_key = "sk_test_li0Cx9dE5T4vdnxpTdt1tb4F"

    #create stripe_customer
    #TODO what about card errors?
    stripe_customer = Stripe::Customer.create( :description => "my first customer",
                             :email => current_customer.email,
                             :card => {number: card_params[:number], 
                              exp_month: card_params[:exp_month], exp_year: card_params[:exp_year], 
                              cvc: card_params[:cvc]  }) 

    current_customer.stripe_id = stripe_customer.id
    current_customer.save
    redirect_to restaurants_path
  end



  private
  def user_params
    params.require(:customer).permit(:first_name, :email, :password, :password_confirmation)
  end

  def card_params
    params.require(:card).permit(:number, :cvc, :exp_month, :exp_year)
  end


end
