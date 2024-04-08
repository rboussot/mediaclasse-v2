class AddVisibleToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :visible, :boolean, default: true, null: false
    add_column :documents, :payment, :boolean, default: true, null: false
  end
end
