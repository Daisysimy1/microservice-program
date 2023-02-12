# db/seeds.rb

# Create customers
customers = [
    { first_name: "John", last_name: "Doe", email: "johndoe@example.com" },
    { first_name: "Jane", last_name: "Doe", email: "janedoe@example.com" },
    { first_name: "Bob", last_name: "Smith", email: "bobsmith@example.com" }
  ]
  
  customers.each do |customer_attributes|
    customer = Customer.create!(customer_attributes)
  
    # Create accounts for each customer
    2.times do
      customer.accounts.create!(balance: 100.0)
    end
  
    # Create cards for each customer
    3.times do
      customer.cards.create!(card_number: rand(100000000000000..9999999999999999))
    end
  end
  
  puts "Seeded #{Customer.count} customers, #{Account.count} accounts, and #{Card.count} cards"
  


