class CreateSubcomments < ActiveRecord::Migration[5.0]
  def change
    create_table :subcomments do |t|
      t.references :comment, foreign_key: true
      t.references :user, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
