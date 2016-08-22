class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :level, foreign_key: true
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :adress, :string
    add_column :users, :phone, :string
    add_column :users, :birth, :date
    add_column :users, :visible, :boolean
  end
end
