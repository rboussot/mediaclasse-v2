class AddSuperToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :super, :boolean, default: false, null: false
  end
end
