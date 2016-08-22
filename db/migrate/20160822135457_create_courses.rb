class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.references :author, foreign_key: true
      t.string :title
      t.integer :date
      t.text :description
      t.references :category, foreign_key: true
      t.boolean :visible, default: true

      t.timestamps
    end
  end
end
