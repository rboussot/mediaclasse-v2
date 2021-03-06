class CreateChannels < ActiveRecord::Migration[5.0]
  def change
    create_table :channels do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.string :name
      t.text :description
      t.string :email
      t.string :link
      t.boolean :visible, default: false, null: false

      t.timestamps
    end
  end
end
