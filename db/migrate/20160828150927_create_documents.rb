class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.references :lecture, foreign_key: true
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
