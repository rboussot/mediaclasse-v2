
# ==================== THE CATEGORIES ====================
#
litterature = Category.create!(
  name: "Littérature",
  description:"Découvrez et redécouvrez les grands classiques de la littérature, à travers des analyses et des résumés illustrés. Mes vidéos offrent un véritable bain culturel avec des peintures et des musiques de l'époque !",
  tag: "litterature"
)
puts "Category litterature created"
forme = Category.create!(
  name: "Types et formes de textes",
  description:"Ces grandes catégories donnent tout de suite les principales clés de compréhension d'un texte littéraire. Le genre : théâtre, roman, poésie, essai obéissent à des codes bien précis attendus par le lecteur ! Les registres : lyrique, tragique, épique, etc. ils sont rattachés à des émotions fondamentales. Les types de texte : narratif, descriptif, argumentatif, nous donnent l'objectif très général du texte.",
  tag: "technique"
)
puts "Category formes created"
histoire = Category.create!(
  name: "Histoire Littéraire",
  description:"Le contexte culturel et historique d'un texte permet de mieux comprendre ses enjeux. Je vous invite à découvrir avec moi les grands mouvements littéraires qui ont marqué l'Histoire de la Littérature.",
  tag:"technique"
)
puts "Category histoire created"
style = Category.create!(
  name: "Stylistique",
  description:"Pour le commentaire composé, vous avez besoin d'outils d'analyse variés et précis. Vous allez voir que les figures de style ne sont par les seules marques importantes que vous pouvez interpréter !",
  tag:"technique"
)
puts "Category style created"
methodo = Category.create!(
  name: "Méthodologie",
  description:"Vous avez une épreuve, un concours à passer ? Vous ne savez pas par où commencer ? Mes méthodologies en vidéo retracent étape par étape les meilleures pratiques pour bien réussir les différents types d'exercice que vous pouvez rencontrer dans vos études littéraires !",
  tag:"technique"
)
puts "Category methodologie created"
littchannels = Category.create!(
  name: "Chaînes littéraires",
  description:"Si vous êtes auteur d'un blog ou d'une chaîne youtube sur la littérature, n'hésitez pas à me faire découvrir votre travail. Je réserve un espace consacré aux personnes créatives qui font un travail de qualité, méritant une meilleure visibilité !",
  tag:"chaines"
)
puts "Category chaînes littéraires created"
