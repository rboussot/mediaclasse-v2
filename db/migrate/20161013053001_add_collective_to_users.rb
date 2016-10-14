class AddCollectiveToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :collective, :boolean, default: false, null: false
  end
end
