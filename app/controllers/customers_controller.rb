class CustomersController < ApplicationController
    def create
        @customer = Customer.create!(customer_params)
        render json: @customer, status: :created
    end
    
      private
    
      def customer_params
        params.permit(:first_name, :last_name, :email)
      end
end
