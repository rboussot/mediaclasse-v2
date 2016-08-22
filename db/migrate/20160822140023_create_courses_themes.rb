class CreateCoursesThemes < ActiveRecord::Migration[5.0]
  def change
    create_table :courses_themes do |t|
      t.references :course, foreign_key: true
      t.references :theme, foreign_key: true

      t.timestamps
    end
  end
end
