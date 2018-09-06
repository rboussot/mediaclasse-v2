class AddPricingToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :pricing, :float, default: 0.0
  end
end
