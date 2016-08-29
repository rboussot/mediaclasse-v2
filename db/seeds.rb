# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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

moliere = Author.new(lastname: "Poquelin", firstname: "Jean-Baptiste", pseudo: "Molière", birth: 1662, death: 1673)
moliere.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472053089/moliere_oxcsys.jpg'
moliere.save
puts "Author Moliere created"
flaubert = Author.new(lastname: "Flaubert", firstname: "Gustave", pseudo: "Flaubert", birth: 1821, death: 1880)
flaubert.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472052969/flaubert_umtdgg.jpg'
flaubert.save
puts "Author Flaubert created"
voltaire = Author.new(lastname: "Arouet", firstname: "François-Marie", pseudo: "Voltaire", birth: 1694, death: 1778)
voltaire.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472052899/voltaire_atmpc9.jpg'
voltaire.save
puts "Author Voltaire created"
maupassant = Author.new(lastname: "Maupassant", firstname: "Guy de", pseudo: "Maupassant", birth: 1694, death: 1778)
maupassant.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472285845/220px-Maupassant_2_golg8n.jpg'
maupassant.save
puts "Author maupassant created"
zola = Author.new(lastname: "Zola", firstname: "Émile", pseudo: "Zola", birth: 1840, death: 1902)
zola.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472285961/ZOLA_1902B_hn3he6.jpg'
zola.save
puts "Author zola created"
celine = Author.new(lastname: "Destouches", firstname: "Louis-Ferdinand", pseudo: "Céline", birth: 1894, death: 1961)
celine.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472286079/tumblr_inline_mspjklbmNf1qz4rgp_jur3n6.jpg'
celine.save
puts "Author céline created"
baudelaire = Author.new(lastname: "Baudelaire", firstname: "Charles", pseudo: "Baudelaire", birth: 1821, death: 1867)
baudelaire.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472286160/baudelaire_crop_wp1tvg.jpg'
baudelaire.save
puts "Author baudelaire created"
corneille = Author.new(lastname: "Corneille", firstname: "Pierre", pseudo: "Corneille", birth: 1606, death: 1684)
corneille.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472286256/1002791-Pierre_Corneille_snyrdd.jpg'
corneille.save
puts "Author corneille created"
camus = Author.new(lastname: "Camus", firstname: "Albert", pseudo: "Camus", birth: 1913, death: 1960)
camus.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472286375/Ectac.Albert-Camus.01_kasbh0.jpg'
camus.save
puts "Author camus created"

litterature = Category.new(name: "Littérature", description:"Oeuvres célèbres", tag: "litterature")
litterature.save
puts "Category litterature created"
forme = Category.new(name: "Types et formes de textes", description:"Les genres et les registres permettent de se repérer parmi les textes littéraires.", tag: "technique")
forme.save
puts "Category formes created"
histoire = Category.new(name: "Histoire Littéraire", description:"Selon les siècles", tag:"technique")
histoire.save
puts "Category histoire created"
style = Category.new(name: "Stylistique", description:"Les cours qui concernent les figues de style", tag:"technique")
style.save
puts "Category style created"
methodo = Category.new(name: "Méthodologie", description:"Les cours qui concernent la méthodologie des épreuves courantes", tag:"technique")
methodo.save
puts "Category methodologie created"
littchannels = Category.new(name: "Chaînes littéraires", description:"Oeuvres célèbres", tag:"chaines")
littchannels.save
puts "Category chaînes littéraires created"
chainescritique = Category.new(name: "Critique littéraire", description:"Critique littéraire", tag:"chaines")
chainescritique.save
puts "Category chaînes critiques created"
chainespoesie = Category.new(name: "Poésie", description:"Chaînes sur la poésie", tag:"chaines")
chainespoesie.save
puts "Category chaînes poésie created"

tartuffe = Course.new(author:moliere, category:litterature, title:"Tartuffe", date: 1664, description:"Le Tartuffe ou l’Imposteur est une comédie en cinq actes et en vers de Molière représentée pour la première fois le 5 février 1669 sur la scène du Palais-Royal.")
tartuffe.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472035983/couverture_-_Molie%CC%80re_Tartuffe_snuogz.jpg'
tartuffe.save
puts "Course Tartuffe created"

candide = Course.new(author:voltaire, category:litterature, title:"Candide", date: 1759, description:"Candide ou l'Optimisme est un conte philosophique de Voltaire paru à Genève en janvier 1759. Il a été réédité vingt fois du vivant de l’auteur, ce qui en fait un des plus grands succès littéraires français.")
candide.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472035983/couverture_-_Voltaire_Candide_c75qsj.jpg'
candide.save
puts "Course candide created"

bovary = Course.new(author:flaubert, category:litterature, title:"Madame Bovary", date: 1857, description:"Madame Bovary: Mœurs de province, couramment abrégé en Madame Bovary, est un roman de Gustave Flaubert paru en 1857 chez Michel Lévy frères, après une pré-parution en 1856 dans le journal La Revue de Paris.")
bovary.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472035983/couverture_-_Flaubert_Madame_Bovary_zvtvs3.jpg'
bovary.save
puts "Course bovary created"

belami = Course.new(author:maupassant, category:litterature, title:"Bel Ami", date: 1885, description:"Bel-Ami est un roman réaliste de Guy de Maupassant, dont l'action se déroule à Paris au XIXᵉ siècle, publié en 1885 sous forme de feuilleton dans Gil Blas.")
belami.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472223824/kr0clathb9ieqapz9a8v.jpg'
belami.save
puts "Course belami created"

germinal = Course.new(author:zola, category:litterature, title:"Germinal", date: 1885, description:"Germinal est un roman d'Émile Zola publié en 1885. Il s'agit du treizième roman de la série des Rougon-Macquart. Écrit d'avril 1884 à janvier 1885, le roman paraît d'abord en feuilleton entre novembre 1884 et février 1885 dans le Gil Blas.")
germinal.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472223880/zcrc5zvmlqmzotgzypoe.jpg'
germinal.save
puts "Course germinal created"

assommoir = Course.new(author:zola, category:litterature, title:"L'Assommoir", date: 1877, description:"L'Assommoir est un roman d'Émile Zola publié en feuilleton dès 1876 dans Le Bien public, puis dans La République des Lettres avant sa sortie en livre en 1877 chez l'éditeur Georges Charpentier.")
assommoir.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472223997/kv0nemyoxhwce52umzix.jpg'
assommoir.save
puts "Course assommoir created"

voyage = Course.new(author:celine, category:litterature, title:"Voyage au Bout de la Nuit", date: 1932, description:"Voyage au bout de la nuit est le premier roman de Céline, publié en 1932. Ce livre manqua de deux voix le prix Goncourt mais obtint le prix Renaudot.")
voyage.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472224087/q86ygkqb6mvuxgu1vcll.jpg'
voyage.save
puts "Course voyage created"

lecid = Course.new(author:corneille, category:litterature, title:"Le Cid", date: 1637, description:"Le Cid est une pièce de théâtre tragi-comique en vers de Pierre Corneille dont la première représentation eut lieu le 7 janvier 1637 au théâtre du Marais.")
lecid.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472224194/hgy8tuy4mfps4kye1r8p.jpg'
lecid.save
puts "Course lecid created"

etranger = Course.new(author:camus, category:litterature, title:"L'Étranger", date: 1942, description:"L’Étranger est le premier roman d’Albert Camus, paru en 1942. Il prend place dans la tétralogie que Camus nommera « cycle de l’absurde » qui décrit les fondements de la philosophie camusienne : l’absurde.")
etranger.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472224259/pw40spihtsdpsikul2iw.jpg'
etranger.save
puts "Course etranger created"

registres = Course.new(category:forme,title:"Les registres littéraires", description:"Les registres littéraires On appelle registre littéraire (ou « tonalité », « ton ») l'ensemble des caractéristiques d'un texte qui provoquent des effets particuliers")
registres.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472049910/4_xfjby3.jpg'
registres.save
puts "Course registres created"

realisme = Course.new(category:histoire,title:"Le mouvement Réaliste", description:"Le Réalisme est un mouvement artistique et littéraire apparu en France vers 18501, né du besoin de réagir contre le sentimentalisme romantique.")
realisme.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472050155/6_cxla0w.jpg'
realisme.save
puts "Course realisme created"

metaphore = Course.new(category:style,title:"Les métaphores", description:"La métaphore, du latin metaphora, lui-même du grec μεταφορά (metaphorá, au sens propre, transport), est une figure de style fondée sur l'analogie. Elle désigne une chose par une autre qui lui ressemble ou partage avec elle une qualité essentielle.")
metaphore.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472050265/7_dhzdox.jpg'
metaphore.save
puts "Course metaphore created"

corpus = Course.new(category:methodo,title:"La question de corpus", description:"Comment préparer et rédiger la question de corpus au bac de français.")
corpus.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472049912/1_tu1vwg.jpg'
corpus.save
puts "Course corpus created"

compose = Course.new(category:methodo,title:"Le commentaire composé", description:"Cette méthodologie du commentaire composé fonctionne sur tous les types de textes : roman, poésie, théâtre, et même le texte argumentatif. Nous verrons ensemble des exemples pour chaque cas. La plupart des outils que je vais présenter sont connus depuis le collège, la méthodologie n'est pas complexe en soi : en fait, la difficulté viendra surtout du niveau culturel et littéraire des textes que vous allez aborder.")
compose.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472222562/ksi6rdgnhxzyuib5xtli.jpg'
compose.save
puts "Course commentaire composé created"

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

tartuffe1 = Lecture.new(course: tartuffe, title:"Résumé analyse", video:"_QaJabZwuHI", description:"Le résumé analysé et illustré de Tartuffe, la comédie de Molière", payment: false)
tartuffe1.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472054218/youtube-tartuffe_l1qzdy.jpg'
tartuffe1.save
puts "Lecture tartuffe1 created"

tartuffe2 = Lecture.new(course: tartuffe, title:"Acte I scène 1", video:"_QaJabZwuHI", description:"", payment: true)
tartuffe2.save
puts "Lecture tartuffe2 created"

tartuffe3 = Lecture.new(course: tartuffe, title:"Acte I scène 4", video:"_QaJabZwuHI", description:"", payment: true)
tartuffe3.save
puts "Lecture tartuffe3 created"

tartuffe4 = Lecture.new(course: tartuffe, title:"Acte III scène 2", video:"_QaJabZwuHI", description:"", payment: true)
tartuffe4.save
puts "Lecture tartuffe4 created"

tartuffe5 = Lecture.new(course: tartuffe, title:"Acte III scène 3", video:"_QaJabZwuHI", description:"", payment: true)
tartuffe5.save
puts "Lecture tartuffe5 created"

tartuffe6 = Lecture.new(course: tartuffe, title:"Acte IV scène 5", video:"_QaJabZwuHI", description:"", payment: true)
tartuffe6.save
puts "Lecture tartuffe5 created"

candide1 = Lecture.new(course: candide, title:"Résumé analyse", video:"988K0bxJyx8", description:"Le résumé analyse illustré de Candide, le conte philosophique de Voltaire", payment: false)
candide1.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472054217/youtube-candide_fwhcyg.jpg'
candide1.save
puts "Lecture candide1 created"

candide2 = Lecture.new(course: candide, title:"Chapitre 1", video:"_h-fP2nt9fM", description:"Le commentaire du chapitre de Candide", payment: true)
candide2.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472054217/youtube-candide2_itryke.jpg'
candide2.save
puts "Lecture candide2 created"

bovary1 = Lecture.new(course: bovary, title:"Résumé analyse", video:"_31zyVWwvuQ", description:"Le résumé analyse illustré de Madame Bovay, le roman de Flaubert", payment: false)
bovary1.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472054217/youtube-bovary_dpkwtd.jpg'
bovary1.save
puts "Lecture bovary1 created"

bovary2 = Lecture.new(course: bovary, title:"Partie 1, Chapitre 1", video:"9VLWSusv4pc", description:"Commentaire composé du premier chapitre de Madame Bovary de Flaubert", payment: true)
bovary2.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472054217/youtube-bovary2_bbltfx.jpg'
bovary2.save
puts "Lecture bovary2 created"

bovary3 = Lecture.new(course: bovary, title:"Partie 1, Chapitre 3", video:"_31zyVWwvuQ", description:"", payment: true)
bovary3.save
puts "Lecture bovary3 created"

bovary4 = Lecture.new(course: bovary, title:"Partie 1, Chapitre 6", video:"_31zyVWwvuQ", description:"", payment: true)
bovary4.save
puts "Lecture bovary4 created"

bovary5 = Lecture.new(course: bovary, title:"Partie 2, Chapitre 12", video:"_31zyVWwvuQ", description:"", payment: true)
bovary5.save
puts "Lecture bovary5 created"

bovary6 = Lecture.new(course: bovary, title:"Partie 3, Chapitre 8", video:"_31zyVWwvuQ", description:"", payment: true)
bovary6.save
puts "Lecture bovary6 created"

etranger1 = Lecture.new(course: etranger, title:"Résumé analyse", video:"2uJuSpdNbHE", description:"", payment: true)
etranger1.save
puts "Lecture etranger1 created"

etranger2 = Lecture.new(course: etranger, title:"Partie 1, chapitre 1", video:"2uJuSpdNbHE", description:"", payment: true)
etranger2.save
puts "Lecture etranger2 created"

etranger3 = Lecture.new(course: etranger, title:"Partie 1, chapitre 6", video:"2uJuSpdNbHE", description:"", payment: true)
etranger3.save
puts "Lecture etranger3 created"

etranger4 = Lecture.new(course: etranger, title:"Partie 2, chapitre 4", video:"2uJuSpdNbHE", description:"", payment: true)
etranger4.save
puts "Lecture etranger4 created"

etranger5 = Lecture.new(course: etranger, title:"Partie 2, chapitre 5", video:"2uJuSpdNbHE", description:"", payment: true)
etranger5.save
puts "Lecture etranger5 created"

voyage1 = Lecture.new(course: voyage, title:"Résumé analyse", video:"2MW_4a9JR1A", description:"", payment: true)
voyage1.save
puts "Lecture voyage1 created"

voyage2 = Lecture.new(course: voyage, title:"Partie 1 chapitre 1", video:"2MW_4a9JR1A", description:"", payment: true)
voyage2.save
puts "Lecture voyage2 created"

voyage3 = Lecture.new(course: voyage, title:"Partie 2 chapitre 11", video:"2MW_4a9JR1A", description:"", payment: true)
voyage3.save
puts "Lecture voyage3 created"

voyage4 = Lecture.new(course: voyage, title:"Partie 3 chapitre 15", video:"2MW_4a9JR1A", description:"", payment: true)
voyage4.save
puts "Lecture voyage4 created"

voyage5 = Lecture.new(course: voyage, title:"Partie 4 chapitre 20", video:"2MW_4a9JR1A", description:"", payment: true)
voyage5.save
puts "Lecture voyage5 created"

voyage6 = Lecture.new(course: voyage, title:"Partie 4 chapitre 45", video:"2MW_4a9JR1A", description:"", payment: true)
voyage6.save
puts "Lecture voyage6 created"

registres1 = Lecture.new(course: registres, title:"Le registre didactique", video:"L1i5anUZeC0", description:"Les marques du registres didactique en littérature", payment: false)
registres1.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472054218/youtube-registres1_mbwzmn.jpg'
registres1.save
puts "Lecture registres1 created"

registres2 = Lecture.new(course: registres, title:"Le registre dramatique", video:"kT7rrvybIi8", description:"Les marques du registres dramatique en littérature", payment: true)
registres2.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472054218/youtube-registres2_tyw44i.jpg'
registres2.save
puts "Lecture registres2 created"

realisme1 = Lecture.new(course: realisme, title: "Le réalisme chez Balzac", video:"59bsBUAlWdc", description:"Un cours sur le réalisme chez Balzac", payment: false)
realisme1.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472054217/youtube-realisme1_icjiq2.jpg'
realisme1.save
puts "Lecture realisme1 created"

realisme2 = Lecture.new(course: realisme, title: "La question de corpus sur des textes réalistes", video:"gcmSx7YUmbg", description:"La question de corpus sur des textes réalistes", payment: true)
realisme2.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472054218/youtube-realisme2_zrcbn0.jpg'
realisme2.save
puts "Lecture realisme2 created"

metaphore1 = Lecture.new(course: metaphore, title: "Les figures de style dans le commentaire composé", video:"44Zt5tz1tYE", description:"La méthodologie du commentaire composé, les grilles de lecture.", payment: false)
metaphore1.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472054217/youtube-metaphore1_xqe1bj.jpg'
metaphore1.save
puts "Lecture metaphore1 created"

corpus1 = Lecture.new(course: corpus, title:"Extraits de romans", video:"uuY5wtJfmIE", description:"La méthode pour la question de corpus pour le roman", payment: true)
corpus1.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472054217/youtube-corpus2_sbgpsf.jpg'
corpus1.save
puts "Lecture corpus1 created"

corpus2 = Lecture.new(course: corpus, title:"Extraits de pièces de théâtre", video:"kT7rrvybIi8", description:"La méthode pour la question de corpus pour le théâtre", payment: false)
corpus2.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472054217/youtube-corpus1_w8bzbw.jpg'
corpus2.save
puts "Lecture corpus2 created"

corpus3 = Lecture.new(course: corpus, title:"Extraits de poésies", video:"nziBPRPAvQI", description:"La méthode pour la question de corpus pour la poésie", payment: true)
corpus3.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472054217/youtube-corpus3_nxrigg.jpg'
corpus3.save
puts "Lecture corpus3 created"

corpus4 = Lecture.new(course: corpus, title:"Extraits de textes argumentatifs", video:"L1i5anUZeC0", description: "La méthode pour la question de corpus pour l'argumentation", payment: true)
corpus4.picture = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472054217/youtube-corpus4_xkvzmi.jpg'
corpus4.save
puts "Lecture corpus4 created"

compose1 = Lecture.new(course: compose, title:"Méthodologie générale du commentaire composé", video:"44Zt5tz1tYE", description: "Ma méthodologie du commentaire composé pour n'importe quel type de texte.", payment: true)
compose1.save
puts "Lecture compose1 created"

compose2 = Lecture.new(course: compose, title:"Commenter un extrait de roman", video:"gcmSx7YUmbg", description: "Application de ma méthodologie du commentaire composé pour le roman", payment: true)

compose2.save
puts "Lecture compose2 created"

compose3 = Lecture.new(course: compose, title:"Commenter un extrait de comédie", video:"https://youtu.be/dOjLbr02CJk", description: "Application de ma méthodologie du commentaire composé sur un extrait de comédie", payment: true)
compose3.save
puts "Lecture compose3 created"

compose4 = Lecture.new(course: compose, title:"Commenter un extrait de tragédie", video:"q8HIU9AuuPI", description: "Application de ma méthodologie du commentaire composé sur un extrait de tragédie", payment: true)
compose4.save
puts "Lecture compose4 created"

compose5 = Lecture.new(course: compose, title:"Commenter un extrait de poésie", video:"https://youtu.be/t-T_MkEwi-w", description: "Application de ma méthodologie du commentaire composé sur une poésie", payment: true)
compose5.save
puts "Lecture compose5 created"

compose6 = Lecture.new(course: compose, title:"Commenter un extrait de texte argumentatif", video:"m4a5O-1wQcg", description: "Application de ma méthodologie du commentaire composé sur un extrait argumentatif", payment: true)
compose6.save
puts "Lecture compose6 created"

belami1 = Lecture.new(course: belami, title:"Commenter un extrait de texte argumentatif", video:"goBK2RvI2TQ", description: "Application de ma méthodologie du commentaire composé sur un extrait argumentatif", payment: true)
belami1.save
puts "Lecture belami1 created"

germinal1 = Lecture.new(course: germinal, title:"Commenter un extrait de texte argumentatif", video:"qYLKdUWzO_I", description: "Application de ma méthodologie du commentaire composé sur un extrait argumentatif", payment: true)
germinal1.save
puts "Lecture germinal1 created"

assommoir1 = Lecture.new(course: assommoir, title:"Commenter un extrait de texte argumentatif", video:"2c7iBqOUcUc", description: "Application de ma méthodologie du commentaire composé sur un extrait argumentatif", payment: true)
assommoir1.save
puts "Lecture assommoir1 created"

lecid1 = Lecture.new(course: lecid, title:"Commenter un extrait de texte argumentatif", video:"FoYlgnjN4Y0", description: "Application de ma méthodologie du commentaire composé sur un extrait argumentatif", payment: true)
lecid1.save
puts "Lecture lecid1 created"

Document.create(title: "Antisèche pour mieux retenir les grilles de lecture", url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472393487/Me%CC%81thodologie_du_commentaire_compose%CC%81_bac_de_franc%CC%A7ais_m0gvkc.pdf', lecture:compose1)
Document.create(title: "Texte intégral du cours", url:"http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472396142/methodologie_commentaire_compose.pdf", lecture: compose1)
Document.create(title: "Le texte intégral du roman", url:"http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472401778/Madame_Bovary_-_Texte_Inte%CC%81gral_x6bqnp.pdf", lecture: bovary1)
Document.create(title: "Le résumé chapitre par chapitre", url:"http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472401783/bovary_-_re%CC%81sume%CC%81_nxrcdg.pdf", lecture: bovary1)
Document.create(title: "Les slides de la vidéo", url:"http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472401960/bovary0_qhumzp.pdf", lecture: bovary1)

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
passionne = Level.new(name: "Passionné")
passionne.save
puts "Level passione created"
curieux = Level.new(name: "Curieux")
curieux.save
puts "Level curieux created"

romain = User.new(email: "romain@gmail.com", password: "mlkmlk", admin: true, level: prof, firstname: "Romain", lastname: "Boussot")
romain.picture_url = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472379055/romain_ogqx4s.jpg'
romain.save
puts "User romain created"
guillaume = User.new(email: "guillaume@gmail.com", password: "mlkmlk", admin: true, level: passionne, firstname: "Guillaume", lastname: "Laîné")
guillaume.picture_url = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472379796/guillaume_rjaoe9.jpg'
guillaume.save
puts "User guillaume created"
ludivine = User.new(email: "ludivine@gmail.com", password: "mlkmlk", level: etudiant, firstname: "Ludivine", lastname:"Deslaurier")
ludivine.picture_url = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472290732/ludivine_feexzx.jpg'
ludivine.save
puts "User ludivine created"
jordi = User.new(email: "jordi@gmail.com", password: "mlkmlk", level: etudiant, firstname: "Jordi", lastname:"Gabioud")
jordi.picture_url = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472290188/13730939_491341361070195_5412083013819820638_o_j5fh1k.jpg'
jordi.save
puts "User jordi created"
aurelien = User.new(email: "aurelien@gmail.com", password: "mlkmlk", level: etudiant, firstname: "Aurélien", lastname:"Clause")
aurelien.picture_url = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472290120/419192_2941644054336_1686328642_n_vh1crz.jpg'
aurelien.save
puts "User aurelien created"
mad = User.new(email: "mad@gmail.com", password: "mlkmlk", level: etudiant, firstname: "Mad", lastname:"Couvertures")
mad.picture_url = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472289954/mad_pxsfsq.jpg'
mad.save
puts "User mad created"
kevin = User.new(email: "hommelitteraire@gmail.com", password: "mlkmlk", level: etudiant, firstname: "Kevin", lastname:"Pelladeaud")
kevin.picture_url = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472379928/pd950mp8b42dxdcqsniw.jpg'
kevin.save
puts "User kevin created"

comment1 = Comment.new(lecture: compose1, user:jordi, content:"Youpi !")
comment1.save
puts "Comment 1 created"
comment2 = Comment.new(lecture: compose1, user:ludivine, content:"Super !")
comment2.save
puts "Comment 2 created"
comment3 = Comment.new(lecture: compose1, user:kevin, content:"Ok !")
comment3.save
puts "Comment 3 created"
comment4 = Comment.new(lecture: bovary1, user:jordi, content:"Coucou !")
comment4.save
puts "Comment 4 created"
comment5 = Comment.new(lecture: bovary1, user:ludivine, content:"Ok !")
comment5.save
puts "Comment 5 created"
comment6 = Comment.new(lecture: bovary1, user:kevin, content:"Héhé !")
comment6.save
puts "Comment 6 created"

channel1 = Channel.new(user: ludivine, category: littchannels, name: "La Boite à Lettres")
channel1.description = "Il est temps que la Littérature se dépoussière! Cette émission essaye donc de proposer un contenu accessible et décomplexé. Des vidéos sur les grandes oeuvres, sur ce qu'on appelle les Classiques mais aussi sur les grands auteurs de l'histoire littéraire française (et parfois d'ailleurs). Ensuite, il ne tient qu'à vous de les lire :)"
channel1.email = "boitelettre@gmail.com"
channel1.visible = true
channel1.link = "https://www.youtube.com/channel/UCu8EOaw52LhS3b8X-N0N_5A"
channel1.picture_url = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472055786/boitelettres_fbc0hw.jpg'
channel1.save
puts "Channel channel1 created"

channel2 = Channel.new(user: kevin, category: littchannels, name: "L'Homme Littéraire")
channel2.description = "L'Homme Littéraire est une chaîne consacrée essentiellement à la littérature et au monde du livre en général. Mystères littéraires, écrivains curieux, amour des mots et de la langue, sensations poétiques et volonté de savoir, tout cela vous attend ici. "
channel2.email = "hommelitteraire@gmail.com"
channel2.visible = true
channel2.link = "https://www.youtube.com/channel/UCkv82c0G9Qn1vUZ2mBcOn4A"
channel2.picture_url = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472055786/hommelitt_ae5msw.jpg'
channel2.save
puts "Channel channel2 created"

channel3 = Channel.new(user: jordi, category: littchannels, name: "Le Marque Page")
channel3.description = "Le Marque-Page propose un contenu divertissant sur la littérature. Des grandes oeuvres littéraires aux classiques de S.F. en passant par quelques sorties actuelles, le Marque-page offre un contenu large, le tout avec humour."
channel3.email = "marquepage@gmail.com"
channel3.visible = true
channel3.link = "https://www.youtube.com/channel/UCJgYXYDJV9UZfxMcKuvc-0g"
channel3.picture_url = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472379298/marquepage_cjjiu3.jpg'
channel3.save
puts "Channel channel3 created"

channel4 = Channel.new(user: mad, category: chainescritique, name: "Entre mes... couvertures")
channel4.description = "Si vous aimez les livres, la lecture, si vous êtes librocubiculariste et que votre endroit préféré de la maison, c'est le lit, si vous désirez découvrir des livres (ou même si vous n'aimez pas lire (et j'espère que vous réaliserez que lire, ça peut être divertissant)), vous êtes bienvenu(e) ici."
channel4.email = "emc@gmail.com"
channel4.visible = true
channel4.link = "https://www.youtube.com/channel/UCy6r387MQ28-EvApxraTDLQ"
channel4.picture_url = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472379376/emc_fbmm80.jpg'
channel4.save
puts "Channel channel4 created"

channel5 = Channel.new(user: aurelien, category: chainespoesie, name: "L'Arche")
channel5.description = "Qu'est-ce que la beauté ? Pourquoi l'art est-il compliqué ? La poésie est-elle ennuyeuse ? Pourquoi les poètes sont tous bizarres et jaunâtres ?"
channel5.email = "larche@gmail.com"
channel5.visible = true
channel5.link = "https://www.youtube.com/channel/UC-XaweTnPBhPM-2hbE6xCJQ"
channel5.picture_url = 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472379380/larche_uk9lqy.jpg'
channel5.save
puts "Channel channel5 created"
