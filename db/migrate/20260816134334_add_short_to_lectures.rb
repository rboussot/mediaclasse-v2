class AddShortToLectures < ActiveRecord::Migration[7.2]
  def change
    add_column :lectures, :short, :boolean
  end
end
