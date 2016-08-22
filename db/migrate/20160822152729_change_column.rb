class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :lecture, :payment, :boolean, default: false
  end
end
