namespace :lectures do
  desc "Met à jour le champ short à true pour les leçons contenant des emojis spécifiques"
  task flag_shorts: :environment do
    emojis = ["🗝️", "🔑", "✔️", "🔥", "🌟", "🤩", "💡", "📏"]
    count = 0

    Lecture.find_each do |lecture|
      if emojis.any? { |emoji| lecture.title.include?(emoji) }
        lecture.update_column(:short, true)
        count += 1
        puts "--> Short détecté : #{lecture.title}"
      end
    end

    puts "=================================================="
    puts "Terminé ! #{count} leçons ont été passées en 'short: true'."
    puts "=================================================="
  end
end