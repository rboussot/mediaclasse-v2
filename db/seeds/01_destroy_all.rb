# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# ==================== DESTROY ALL ====================
#
CoursesTheme.destroy_all
puts "All courses_theme destroyed"
Comment.destroy_all
puts "All comments destroyed"
Document.destroy_all
puts "All documents destroyed"
Lecture.destroy_all
puts "All lectures destroyed"
Course.destroy_all
puts "All courses destroyed"
Channel.destroy_all
puts "All channels destroyed"
Category.destroy_all
puts "All categories destroyed"
Theme.destroy_all
puts "All themes destroyed"
Author.destroy_all
puts "All authors destroyed"
User.destroy_all
puts "All users destroyed"
Level.destroy_all
puts "All levels destroyed"
