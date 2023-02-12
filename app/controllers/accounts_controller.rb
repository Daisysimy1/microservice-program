class AccountsController < ApplicationController
    before_action :set_account, only: [:top_up, :withdraw]
  
    def top_up
      @account.top_up
      render json: @account, status: :ok
    end
  
    def withdraw
      @account.withdraw
      render json: @account, status: :ok
    end
  
    private
  
    def set_account
      @account = Account.find(params[:id])
    end
end
