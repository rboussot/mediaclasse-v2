class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :lecture, foreign_key: true
      t.references :user_id, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
