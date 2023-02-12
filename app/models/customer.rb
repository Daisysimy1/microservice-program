class Customer < ApplicationRecord
  has_many :accounts
  has_many :cards
  
end
