class AddTagToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :tag, :string
  end
end
