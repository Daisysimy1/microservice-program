class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.float :balance
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
