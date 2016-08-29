class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.string :tag
      t.string :tab

      t.timestamps
    end
  end
end
