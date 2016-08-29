class AddStripeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :stripe_customer_id, :string
    add_column :users, :plan, :string
    add_column :users, :paydate, :date
  end
end
