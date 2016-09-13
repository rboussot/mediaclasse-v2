class ChangeTabsToVideosInCategories < ActiveRecord::Migration[5.0]
  def change
    rename_column :categories, :tab, :video
  end
end
