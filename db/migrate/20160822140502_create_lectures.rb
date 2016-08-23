class CreateLectures < ActiveRecord::Migration[5.0]
  def change
    create_table :lectures do |t|
      t.references :course, foreign_key: true
      t.string :title
      t.string :video
      t.text :description
      t.boolean :payment, default: true, null: false
      t.boolean :visible, default: true, null: false

      t.timestamps
    end
  end
end
