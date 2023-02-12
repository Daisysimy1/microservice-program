class Account < ApplicationRecord
    belongs_to :customer
  
    def top_up
      self.balance += params[:amount].to_f
      save
    end
  
    def withdraw
      self.balance -= params[:amount].to_f
      save
    end
end
