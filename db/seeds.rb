# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


CoursesTheme.destroy_all
Comment.destroy_all
Lecture.destroy_all
Course.destroy_all
Category.destroy_all
Theme.destroy_all
Author.destroy_all
User.destroy_all
Level.destroy_all

moliere = Author.new(lastname: "Poquelin", firstname: "Jean-Baptiste", pseudo: "Molière", birth: 1662, death: 1673)
moliere.save
puts "Author Moliere created"
flaubert = Author.new(lastname: "Flaubert", firstname: "Gustave", birth: 1821, death: 1880)
flaubert.save
puts "Author Voltaire created"
voltaire = Author.new(lastname: "Arouet", firstname: "François-Marie", pseudo: "Voltaire", birth: 1694, death: 1778)
voltaire.save
puts "Author Flaubert created"

litterature = Category.new(name: "Littérature", description:"Oeuvres célèbres")
litterature.save
puts "Category litterature created"
forme = Category.new(name: "Types et formes de textes", description:"Les genres et les registres permettent de se repérer parmi les textes littéraires.")
forme.save
puts "Category formes created"
histoire = Category.new(name: "Histoire Littéraire", description:"Selon les siècles")
histoire.save
puts "Category histoire created"
style = Category.new(name: "Stylistique", description:"Les cours qui concernent les figues de style")
style.save
puts "Category style created"
methodo = Category.new(name: "Méthodologie", description:"Les cours qui concernent la méthodologie des épreuves courantes")
methodo.save
puts "Category methodologie created"

tartuffe = Course.new(author:moliere, category:litterature,title:"Tartuffe", date: 1664, description:"Le Tartuffe ou l’Imposteur est une comédie en cinq actes et en vers de Molière représentée pour la première fois le 5 février 1669 sur la scène du Palais-Royal.", tag:"litterature")
tartuffe.save
puts "Course Tartuffe created"
candide = Course.new(author:voltaire, category:litterature,title:"Candide", date: 1759, description:"Candide ou l'Optimisme est un conte philosophique de Voltaire paru à Genève en janvier 1759. Il a été réédité vingt fois du vivant de l’auteur, ce qui en fait un des plus grands succès littéraires français.", tag:"litterature")
candide.save
puts "Course candide created"
bovary = Course.new(author:flaubert, category:litterature,title:"Madame Bovary", date: 1857, description:"Madame Bovary: Mœurs de province, couramment abrégé en Madame Bovary, est un roman de Gustave Flaubert paru en 1857 chez Michel Lévy frères, après une pré-parution en 1856 dans le journal La Revue de Paris.", tag:"litterature")
bovary.save
puts "Course bovary created"
registres = Course.new(category:forme,title:"Les registres littéraires", description:"Les registres littéraires On appelle registre littéraire (ou « tonalité », « ton ») l'ensemble des caractéristiques d'un texte qui provoquent des effets particuliers", tag:"technique")
registres.save
puts "Course registres created"
realisme = Course.new(category:histoire,title:"Le mouvement Réaliste", description:"Le Réalisme est un mouvement artistique et littéraire apparu en France vers 18501, né du besoin de réagir contre le sentimentalisme romantique.", tag:"technique")
realisme.save
puts "Course realisme created"
metaphore = Course.new(category:style,title:"Les métaphores", description:"La métaphore, du latin metaphora, lui-même du grec μεταφορά (metaphorá, au sens propre, transport), est une figure de style fondée sur l'analogie. Elle désigne une chose par une autre qui lui ressemble ou partage avec elle une qualité essentielle.", tag:"technique")
metaphore.save
puts "Course metaphore created"
corpus = Course.new(category:methodo,title:"La question de corpus", description:"Comment préparer et rédiger la question de corpus au bac de français.", tag:"technique")
corpus.save
puts "Course corpus created"

theatre = Theme.new(name: "Le théâtre et sa représentation", description:"les procédés de mise en scène du 17e siècle à nos jours")
theatre.save
puts "Theme theatre created"
critique = Theme.new(name: "Critique de la société", description:"La satire du 17e siècle à nos jours")
critique.save
puts "Theme critique created"
roman = Theme.new(name: "Le roman et ses personnages", description:"Comment le personnage romanesque est-il construit au XIXe et au XXe siècle ?")
roman.save
puts "Theme roman created"
genres = Theme.new(name: "Les genres et registres", description:"Distinguer les procédés qui relèves des genres et registres particuliers")
genres.save
puts "Theme genres created"
mouvement = Theme.new(name: "Le mouvement Réaliste au XIXe siècle", description:"Connaître les grands auteurs réalistes du XIXe siècle")
mouvement.save
puts "Theme mouvement created"
figures = Theme.new(name: "Les figures de style", description:"Savoir repérer les principales figures de style dans un texte littéraire")
figures.save
puts "Theme figures created"
bac = Theme.new(name: "La question de corpus", description:"Les épreuves au bac de français")
bac.save
puts "Theme bac created"

tartuffe_theatre = CoursesTheme.new(course:tartuffe, theme:theatre)
tartuffe_theatre.save
puts "CoursesTheme tartuffe_theatre created"
tartuffe_critique = CoursesTheme.new(course:tartuffe, theme:critique)
tartuffe_critique.save
puts "CoursesTheme tartuffe_critique created"
candide_critique = CoursesTheme.new(course:candide, theme:critique)
candide_critique.save
puts "CoursesTheme candide_critique created"
bovary_roman = CoursesTheme.new(course:bovary, theme:roman)
bovary_roman.save
puts "CoursesTheme bovary_roman created"
bovary_critique = CoursesTheme.new(course:bovary, theme:critique)
bovary_critique.save
puts "CoursesTheme bovary_critique created"
bovary_mouvement = CoursesTheme.new(course:bovary, theme:mouvement)
bovary_mouvement.save
puts "CoursesTheme bovary_mouvement created"
registresgenres = CoursesTheme.new(course:registres, theme:genres)
registresgenres.save
puts "CoursesTheme registresgenres created"
realisme_mouvement = CoursesTheme.new(course:realisme, theme:mouvement)
realisme_mouvement.save
puts "CoursesTheme realisme_mouvement created"
metaphore_figures = CoursesTheme.new(course:metaphore, theme:figures)
metaphore_figures.save
puts "CoursesTheme metaphore_figures created"
corpus_bac = CoursesTheme.new(course:corpus, theme:bac)
corpus_bac.save
puts "CoursesTheme metaphore_figures created"

tartuffe1 = Lecture.new(course: tartuffe, title:"Résumé analyse", video:"https://youtu.be/_QaJabZwuHI", description:"Le résumé analysé et illustré de Tartuffe, la comédie de Molière", payment: false)
tartuffe1.save
puts "Lecture tartuffe1 created"
candide1 = Lecture.new(course: candide, title:"Résumé analyse", video:"https://youtu.be/988K0bxJyx8", description:"Le résumé analyse illustré de Candide, le conte philosophique de Voltaire", payment: false)
candide1.save
puts "Lecture candide1 created"
candide2 = Lecture.new(course: candide, title:"Chapitre 1", video:"https://youtu.be/_h-fP2nt9fM", description:"Le commentaire du chapitre de Candide", payment: true)
candide2.save
puts "Lecture candide2.created"
bovary1 = Lecture.new(course: bovary, title:"Résumé analyse", video:"https://youtu.be/_31zyVWwvuQ", description:"Le résumé analyse illustré de Madame Bovay, le roman de Flaubert", payment: false)
bovary1.save
puts "Lecture bovary1 created"
bovary2 = Lecture.new(course: bovary, title:"Chapitre 1", video:"https://youtu.be/9VLWSusv4pc", description:"Commentaire composé du premier chapitre de Madame Bovary de Flaubert", payment: true)
bovary2.save
puts "Lecture bovary2 created"
bovary3 = Lecture.new(course: bovary, title:"Question de corpus sur le roman", video:"https://youtu.be/uuY5wtJfmIE", description:"Méthodologie du corpus, appliquée à des extraits de roman, notamment Madame Bovary de Flaubert", payment: true)
bovary3.save
puts "Lecture bovary3 created"
registres1 = Lecture.new(course: registres, title:"Le registre didactique", video:"https://youtu.be/L1i5anUZeC0", description:"Les marques du registres didactique en littérature", payment: false)
registres1.save
puts "Lecture registres1 created"
registres2 = Lecture.new(course: registres, title:"Le registre dramatique", video:"https://youtu.be/kT7rrvybIi8", description:"Les marques du registres dramatique en littérature", payment: true)
registres2.save
puts "Lecture registres2 created"
realisme1 = Lecture.new(course: realisme, title: "Le réalisme chez Balzac", video:"https://youtu.be/59bsBUAlWdc", description:"Un cours sur le réalisme chez Balzac", payment: false)
realisme1.save
puts "Lecture realisme1 created"
realisme2 = Lecture.new(course: realisme, title: "La question de corpus sur des textes réalistes", video:"https://youtu.be/gcmSx7YUmbg", description:"La question de corpus sur des textes réalistes", payment: true)
realisme2.save
puts "Lecture realisme2 created"
metaphore1 = Lecture.new(course: metaphore, title: "Les figures de style dans le commentaire composé", video:"https://youtu.be/44Zt5tz1tYE", description:"La méthodologie du commentaire composé, les grilles de lecture.", payment: false)
metaphore1.save
puts "Lecture metaphore1 created"
corpus1 = Lecture.new(course: corpus, title:"Extraits de pièces de théâtre", video:"https://youtu.be/kT7rrvybIi8", description:"La méthode pour la question de corpus pour le théâtre", payment: false)
corpus1.save
puts "Lecture corpus1 created"
corpus2 = Lecture.new(course: corpus, title:"Extraits de romans", video:"https://youtu.be/uuY5wtJfmIE", description:"La méthode pour la question de corpus pour le roman", payment: true)
corpus2.save
puts "Lecture corpus2 created"
corpus3 = Lecture.new(course: corpus, title:"Extraits de poésies", video:"https://youtu.be/nziBPRPAvQI", description:"La méthode pour la question de corpus pour la poésie", payment: true)
corpus3.save
puts "Lecture corpus3 created"
corpus4 = Lecture.new(course: corpus, title:"Extraits de textes argumentatifs", video:"https://youtu.be/L1i5anUZeC0", description: "La méthode pour la question de corpus pour l'argumentation", payment: true)
corpus4.save
puts "Lecture corpus4 created"

seconde = Level.new(name: "Seconde")
seconde.save
puts "Level seconde created"
premiere = Level.new(name: "Première")
premiere.save
puts "Level premiere created"
terminale = Level.new(name: "Terminale")
terminale.save
puts "Level terminale created"
etudiant = Level.new(name: "Étudiant")
etudiant.save
puts "Level etudiant created"
prof = Level.new(name: "Professeur")
prof.save
puts "Level prof created"

john = User.new(email: "john.lennon@gmail.com", password: "mlkmlk", admin: true, level: prof)
john.save
puts "User john created"
paul = User.new(email: "paul.mcartney@gmail.com", password: "mlkmlk", level: etudiant)
paul.save
puts "User paul created"

comment1 = Comment.new(lecture: tartuffe1, user:john, content:"Youpi")
comment1.save
puts "Comment 1 created"
comment2 = Comment.new(lecture: candide1, user:john, content:"Super")
comment2.save
puts "Comment 2 created"
comment3 = Comment.new(lecture: bovary1, user:john, content:"Coucou")
comment3.save
puts "Comment 3 created"
comment4 = Comment.new(lecture: realisme1, user:john, content:"Ok")
comment4.save
puts "Comment 4 created"
comment5 = Comment.new(lecture: corpus1, user:john, content:"Héhé")
comment5.save
puts "Comment 5 created"

