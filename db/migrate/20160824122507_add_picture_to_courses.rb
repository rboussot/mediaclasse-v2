class AddPictureToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :photo, :string
  end
end
