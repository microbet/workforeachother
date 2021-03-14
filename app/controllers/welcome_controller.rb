class WelcomeController < ApplicationController
 # before_action :set_account

  def index
  end

  def about
  end

  def contact
  end

  def login
    @x = "hello"
  end

  def add_hour
    @user = current_user
    @user.balance = current_user.balance + 1
    save
  end

 # private
    # Use callbacks to share common setup or constraints between actions.
 #   def set_account
 #     @account = User.find(params[:id])
 #   end

end
