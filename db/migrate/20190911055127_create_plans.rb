class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.string :plan_name
      t.float :price
      t.string :css_class
      t.string :title
      t.text :description
      t.boolean :visible
      t.string :payment
      t.text :message

      t.timestamps
    end
  end
end
