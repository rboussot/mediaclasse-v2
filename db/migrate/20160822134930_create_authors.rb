class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.string :lastname
      t.string :firstname
      t.string :pseudo
      t.integer :birth
      t.integer :death

      t.timestamps
    end
  end
end
