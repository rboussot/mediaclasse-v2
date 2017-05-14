class AddCoursesIdsToUser < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :courses_ids, :string

    size = User.count
    User.all.each_with_index do |user, i|
      p "#{i}/#{size}" if i%100 == 0
      user.courses_ids = ActiveRecord::Migration.execute("SELECT votable_id FROM votes WHERE votes.voter_id = #{user.id}").values.flatten
      user.save
    end
  end

  def down
    remove_column :users, :courses_ids, :string
  end
end
