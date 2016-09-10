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
#
# ==================== THE AUTHORS ====================
#
balzac = Author.create!(
  lastname:"Balzac",
  firstname:"Honoré de",
  pseudo:"Balzac",
  birth:1799,
  death:1850,
  picture:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473141632/authors/balzac.jpg'
)
puts "Author moliere created"
moliere = Author.create!(
  lastname:"Poquelin",
  firstname:"Jean-Baptiste",
  pseudo:"Molière",
  birth:1662,
  death:1673,
  picture:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473142236/authors/moliere.jpg'
)
puts "Author moliere created"
flaubert = Author.create!(
  lastname: "Flaubert",
  firstname: "Gustave",
  pseudo: "Flaubert",
  birth: 1821,
  death: 1880,
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473141618/authors/flaubert.jpg'
)
puts "Author flaubert created"
voltaire = Author.create!(
  lastname: "Arouet",
  firstname: "François-Marie",
  pseudo: "Voltaire",
  birth: 1694,
  death: 1778,
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473141820/authors/voltaire.jpg'
)
puts "Author voltaire created"
maupassant = Author.create!(
  lastname: "Maupassant",
  firstname: "Guy de",
  pseudo: "Maupassant",
  birth: 1850,
  death: 1893,
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473141749/authors/maupassant.jpg'
)
puts "Author maupassant created"
zola = Author.create!(
  lastname: "Zola",
  firstname: "Émile",
  pseudo: "Zola",
  birth: 1840,
  death: 1902,
  picture:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473141846/authors/zola.jpg'
)
puts "Author zola created"
celine = Author.create!(
  lastname: "Destouches",
  firstname: "Louis-Ferdinand",
  pseudo: "Céline",
  birth: 1894,
  death:1961,
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473142260/authors/celine.jpg'
)
puts "Author celine created"
baudelaire = Author.create!(
  lastname: "Baudelaire",
  firstname: "Charles",
  pseudo: "Baudelaire",
  birth: 1821,
  death: 1867,
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473141721/authors/baudelaire.jpg'
)
puts "Author baudelaire created"
corneille = Author.create!(
  lastname: "Corneille",
  firstname: "Pierre",
  pseudo: "Corneille",
  birth: 1606,
  death: 1684,
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473141677/authors/corneille.jpg'
)
puts "Author corneille created"
camus = Author.create!(
  lastname: "Camus",
  firstname: "Albert",
  pseudo: "Camus",
  birth: 1913,
  death: 1960,
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473141610/authors/camus.jpg'
)
puts "Author camus created"
racine = Author.create!(
  lastname: "Racine",
  firstname: "Jean",
  pseudo: "Racine",
  birth: 1639,
  death: 1699,
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473141790/authors/racine.jpg'
)
puts "Author racine created"
rouget = Author.create!(
  lastname: "Rouget de Lisle",
  firstname: "Claude",
  pseudo: "Rouget de Lisle",
  birth: 1760,
  death: 1836,
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473141922/authors/rouget.jpg'
)
puts "Author rouget created"
rimbaud = Author.create!(
  lastname: "Rimbaud",
  firstname: "Arthur",
  pseudo: "Rimbaud",
  birth: 1854,
  death: 1891,
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473141856/authors/rimbaud.jpg'
)
puts "Author rimbaud created"
lafontaine = Author.create!(
  lastname: "de La Fontaine",
  firstname: "Jean",
  pseudo: "La Fontaine",
  birth: 1621,
  death: 1695,
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473142170/authors/lafontaine.jpg'
)
puts "Author lafontaine created"
marivaux = Author.create!(
  lastname: "Carlet de Chamblain de Marivaux",
  firstname: "Pierre",
  pseudo: "Marivaux",
  birth: 1688,
  death: 1763,
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473141691/authors/marivaux.jpg'
)
puts "Author marivaux created"
montesquieu = Author.create!(
  lastname: "baron de La Brède et de Montesquieu",
  firstname: "Charles Louis de Secondat",
  pseudo: "Montesquieu",
  birth: 1689,
  death: 1755,
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473141679/authors/montesquieu.jpg'
)
puts "Author montesquieu created"
diderot = Author.create!(
  lastname: "Diderot",
  firstname: "Denis",
  pseudo: "Diderot",
  birth: 1713,
  death: 1784,
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473141802/authors/diderot.jpg'
)
puts "Author diderot created"
rabelais = Author.create!(
  lastname: "Rabelais",
  firstname: "François",
  pseudo: "Rabelais",
  birth: 1494,
  death: 1553,
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473141833/authors/rabelais.jpg'
)
puts "Author rabelais created"
hugo = Author.create!(
  lastname: "Hugo",
  firstname: "Victor",
  pseudo: "Hugo",
  birth: 1802,
  death: 1885,
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473141701/authors/hugo.jpg'
)
puts "Author hugo created"
rousseau = Author.create!(
  lastname: "Rousseau",
  firstname: "Émile",
  pseudo: "Rousseau",
  birth: 1712,
  death: 1778,
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473141859/authors/rousseau.jpg'
)
puts "Author rousseau created"
#
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
#
# ==================== THE LITTERATURE COURSES ====================
#
tartuffe = Course.create!(
  author:moliere,
  category:litterature,
  title:"Tartuffe",
  date: 1664,
  description:"Un homme malententionné se fait accueillir dans la maison d'Orgon. Il flatte le maître de maison, passe pour un dévot. Orgon lui fait toute confiance, il veut le marier à sa fille, lui léguer son héritage... Mais la petite famille d'Orgon n'est pas dupe. Chacun va contribuer, avec ses qualités, à maintenir la cohérence familiale. En dénonçant cet hypocrite, Molière fait passer au roi un message particulièrement subversif : attention de ne pas donner trop de confiance aux personnes qui se disent très religieuses. On comprend mieux qu'une cabale ait été lancée contre cette pièce, qui fut interdite dès sa première représentation !",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472035983/courses/tartuffe.jpg',
  keywords: "theatre, teatre, tehatre, comedi, comedy, comedie, comédie, tratuff, tartuff, tartufe, moliere, moliaire, louis 14, XIV, cabale"
  )
puts "Course tartuffe created"

candide = Course.create!(
  author:voltaire,
  category:litterature,
  title:"Candide",
  date: 1759,
  description:"Candide, enfant bâtard du baron de Thunder-ten-tronck, est chassé du château de son enfance. Il va découvrir le monde, et réaliser qu'il ne tourne peut être pas aussi bien que le prétend son professeur Pangloss ! Comment comprendre la guerre, les catastrophes naturelles, l'inquisition, l'esclavage ? Avec ce conte philosophique, Voltaire remet en cause l'optimisme de Leibniz, selon lequel Dieu organise le monde le mieux possible. À travers ces aventures, Voltaire amène son personnage Candide et son lecteur à trouver par eux-mêmes les valeurs importantes qui fondent la sagesse.",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472035983/courses/candide.jpg',
  keywords: ""
  )
puts "Course candide created"

bovary = Course.create!(
  author:flaubert,
  category:litterature,
  title:"Madame Bovary",
  date: 1857,
  description:"Madame Bovary rêve de romance, de nacelles au clair de lune, d'enlèvements... Mais elle est mariée à un médiocre officier de santé, Charles, qui ne lui apporte que des déceptions... Tout le long du roman, nous découvrons les tentatives désespérées de cette jeune femme qui aimerait échapper au quotidien de sa ville de Province. Avec une ironie cinglante, Flaubert nous montre à la fois la vanité de ces efforts, et la terrible platitude de ces personnages plus vrais que nature. Ce roman, véritable chef-d'oeuvre de la littérature française, fut poursuivit en justice pour outrage à la morale publique et religieuse et aux bonnes moeurs.",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472035983/courses/bovary.jpg',
  keywords: ""
  )
puts "Course bovary created"

belami = Course.create!(
  author:maupassant,
  category:litterature,
  title:"Bel Ami",
  date: 1885,
  description:"Bel-Ami, c'est l'histoire de Georges Duroy, ancien sous-officier des colonies française, qui va gravir les échelons de la société parisienne. D'abord journaliste à La Vie Française, il va devenir un des personnages les plus influents de Paris. Comment va-t-il s'y prendre ? Il n'a aucun talent particulier... Mais il a beaucoup de charme, et aucun scrupule. C'est donc par les femmes qu'il réussira. Ce magnifique roman de Maupassant, à la fois plein de légèreté et de cynisme, est un chef-d'oeuvre du réalisme littéraire.",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472223824/courses/belami.jpg',
  keywords: ""
  )
puts "Course belami created"

germinal = Course.create!(
  author:zola,
  category:litterature,
  title:"Germinal",
  date: 1885,
  description:"Étienne Lantier a quitté son travail aux chemins de fer et trouve un emploi dans la mine du Voreux. À travers son histoire, Zola nous fait découvrir les conditions de travail des mineurs, et leur cheminement de l'exploitation à la révolte. Tous les acteurs sont représentés : ouvriers, politiciens, propriétaires, actionnaires, syndicalistes, anarchistes... Dans ce tableau très sombre de la condition des travailleurs, Zola évoque cependant l'espoir que l'Humanité s'élèvera par l'instruction et la science.",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472223880/courses/germinal.jpg',
  keywords: ""
  )
puts "Course germinal created"

assommoir = Course.create!(
  author:zola,
  category:litterature,
  title:"L'Assommoir",
  date: 1877,
  description:"Dès la préface de l'Assommoir, Zola nous annonce son projet et donne tous les thèmes abordés. « J'ai voulu peindre la déchéance fatale d'une famille ouvrière, dans le milieu empesté de nos faubourgs. Au bout de l'ivrognerie et de la fainéantise, il y a le relâchement des liens de la famille, les ordures de la promiscuité, l'oubli progressif des sentiments honnêtes, puis comme dénouement la honte et la mort. C'est de la morale en action, tout simplement. » Le mot fatalité est très important. Nous savons dès le début que cette histoire va mal se terminer, et Zola utilise, tout au long du roman, l'ironie tragique, des allusions à la fin du roman. Dans la tragédie Grecque, les personnages sont écrasés par les Dieux. Vous allez voir que chez Zola, les personnages sont écrasés par le milieu et par  l'hérédité.",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472223997/courses/assommoir.jpg',
  keywords: ""
  )
puts "Course assommoir created"

experimental = Course.create!(
  author:zola,
  category:litterature,
  title:"Le roman expérimental",
  date: 1880,
  description:"Zola s'inspire d'un ouvrage de Claude Bernard, « L'introduction à l'étude de la médecine expérimentale » pour écrire une série d'articles où il développe sa propre conception de la littérature naturaliste, comme une méthode d'observation et d'expérimentation sociale. Dans notre extrait, Zola compare l'activité scientifique et celle de l'écrivain naturaliste, pour mieux faire ressortir les points communs et les différences. L'écrivain observe, pose un diagnostique, mais ce n'est pas un praticien, il laisse au législateur le soin de soigner la société malade. Comment Zola défend-il, à travers une métaphore scientifique, une conception de la littérature où le romancier contribue, par sa neutralité, au progrès social ?",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473441088/courses/experimental.jpg',
  keywords: ""
  )
puts "Course assommoir created"

voyage = Course.create!(
  author:celine,
  category:litterature,
  title:"Voyage au Bout de la Nuit",
  date: 1932,
  description:"Voyage au bout de la Nuit, c'est d'abord une voix. Celle de Ferdinand Bardamu, le personnage narrateur. Il nous entraîne avec lui dans une aventure effroyable en 4 parties : La Première Guerre Mondiale, les colonies, les États-Unis, l'Europe. Le pessimisme de Céline est total : seuls quelques personnages exceptionnels échappent à la méchanceté et à l'égoïsme généralisé. C'est une philosophie profonde, car son rapport à l'humanité est fondé à la fois sur l'amour et la haine. On est très loin d'un antisémitisme simpliste comme on peut le voir dans ses pamphlets Bagatelles pour un massacre, L'École des Cadavres. Ces textes médiocres ne doivent pas nous faire passer à côté du chef-d'oeuvre.",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472224087/courses/voyage.jpg',
  keywords: ""
  )
puts "Course voyage created"

lecid = Course.create!(
  author:corneille,
  category:litterature,
  title:"Le Cid",
  date: 1637,
  description:"Le jeune chevalier Don Rodrigue s'apprête à épouser la belle Chimène. Mais voilà que leurs pères se confrontent. Don Diègue, le père de Rodrigue, est provoqué en duel par Don Gomès, le père de Chimène ! Trop âgé pour soutenir un tel assaut, Don Diègue est désarmé, humilié par son adversaire. Don Rodrigue n'a plus le choix, il doit venger son père et tuer le père de sa fiancée... Cettre tragi-comédie de Corneille a soulevé de nombreuses protestations : c'est la querelle du Cid. Certains trouvent que les sentiments de Chimène sont à la limite de la bienséance ! Mais l'enthousiasme et l'énergie de la pièce emporte l'adhésion des spectateurs, et cette pièce qui fut un énorme succès, continue de charmer le spectateur d'aujourd'hui.",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472224194/courses/lecid.jpg',
  keywords: ""
  )
puts "Course lecid created"

etranger = Course.create!(
  author:camus,
  category:litterature,
  title:"L'Étranger",
  date: 1942,
  description:"Un homme est condamné à mort, pour un meurtre absurde. Provoqué par quoi ? Le soleil, la chaleur ? Pourquoi ces quatre coups de feu sur le corps inerte de l'Arabe ? Pas d'excuse ni d'explication possible. Avec ce roman, Camus nous fait rencontrer de l'absurdité dans toute sa violence. Le personnage principal, Meursault, raconte les événements de sa vie de façon étrangement objective, sans émotion. Mais derrière cette apparente simplicité, le lecteur fait l'expérience d'une vision du monde effarante. Avec Meursault, nous passons de la stupeur à la révolte, avant de découvrir enfin une réconciliation possible avec l'absurdité du monde.",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472224259/courses/etranger.jpg',
  keywords: ""
  )
puts "Course etranger created"

phedre = Course.create!(
  author: racine,
  category:litterature,
  title:"Phèdre",
  date: 1677,
  description:"Phèdre est poursuivie par la vengeance de Vénus ! Pourquoi ? Parce que le grand-père de Phèdre, Hélios le dieu du soleil, a surpris Vénus en plein adultère avec Mars le dieu de la guerre... la déesse de l'amour maudit alors la descendance d'Hélios ! Au début de la tragédie, inspire à Phèdre un désir contre-nature pour son beau-fils Hippolyte. La tragédie de Racine obétit parfaitement aux règles du théâtre classique, dans une intrigue simple et fatale, qui inspire à la fois la terreur et la pitié...",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473074352/courses/phedre.jpg',
  keywords: ""
  )
puts "Course phedre created"

andromaque = Course.create!(
  author: racine,
  category:litterature,
  title:"Andromaque",
  date: 1668,
  description:"Pyrrhus, le fils d'Achille, participe au sac de Troie. C'est lui qui tue le roi Priam (le père de Pâris). La ville de Troie est mise à feu et à sang. Il n'en reste que des ruines. Andromaque et Astyanax sont faits prisonniers par Pyrrhus qui les emmène dans son royaume d'Épire. C'est maintenant que commence notre tragédie.",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472217736/courses/andromaque.jpg',
  keywords: ""
  )
puts "Course andromaque created"

goriot = Course.create!(
  author: balzac,
  category:litterature,
  title:"Le Père Goriot",
  date: 1835,
  description:"Le vieux père Goriot donne tout à ses filles, Delphine de Nucingen et Anastasie de Restaud. Elles sont riches pourtant ! Mais elles répugnent à lui rendre visite dans la pension malpropre où il a trouvé refuge. Le jeune Eugène de Rastignac venu à la conquête de Paris habite la même pension et se lie d'amitié avec le vieil homme. Peu à peu, il délaisse ses études et découvre le beau monde parisien... Les illusions du jeune homme vont tomber au contact de l'abrupte réalité. Ce roman est ainsi un chef-d'oeuvre fondateur du mouvement réaliste en littérature.",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473074479/courses/goriot.jpg',
  keywords: ""
  )
puts "Course goriot created"

fleurs = Course.create!(
  author: baudelaire,
  category:litterature,
  title:"Les Fleurs du Mal",
  date: 1835,
  description:"Le titre du recueil est déjà une métaphore, qui affirme que la beauté peut prendre naissance dans les terrains les plus hostiles. Pour Baudelaire, le beau n'a rien à voir avec le bien ou avec le vrai. Et c'est cela qui va choquer ses contemporains. Le recueil des Fleurs du Mal sera ainsi poursuivi pour outrage aux bonnes moeurs et à la morale publique et certains de ses poèmes seront retranchés de la première édition. Les Fleurs du Mal, c'est aussi la terrible confrontation entre l'Idéal et le Spleen. L'Idéal, c'est pour Baudelaire le plaisir de l'esprit, qui se plaît dans la beauté et l'imagination. Mais il lui oppose ce qu'il appelle le Spleen, la sensation écrasante d'un monde décadent, sans progrès possible...",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473075063/courses/fleurs.jpg',
  keywords: ""
  )
puts "Course fleurs created"

marseillaise = Course.create!(
  author: rouget,
  category:litterature,
  title:"La Marseillaise",
  date: 1835,
  description:"La Marseillaise est l'hymne national de la France, mais c'est aussi un symbole qui dépasse la représentation d'un pays. Le fait qu'elle soit traduite, chantée à travers le monde ; le fait même qu'elle soit souvent discutée et remise en question, tout cela montre à quel point La Marseillaise est vivante aujourd'hui. En quoi les paroles de la Marseillaise invitent-elles, au-delà de leur interprétation purement historique et contextuelle, à réfléchir sur des valeurs qui restent des sujets de débat à travers les siècles jusqu'à aujourd'hui ?",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473075847/courses/marseillaise.jpg',
  keywords: ""
  )
puts "Course marseillaise created"
#
douai = Course.create!(
  author: rimbaud,
  category:litterature,
  title:"Le cahier de Douai",
  date: 1870,
  description:"Découvrez les premiers poèmes que Rimbaud, adolescent en fugue, confie à Paul Demeny pour qu'il les publie. Mais bientôt il se ravise, et écrit une lettre à son ami poète et éditeur : « Brûlez, je le veux, et je crois que vous respecterez ma volonté comme celle d'un mort, brûlez tous les vers que je fus assez sot pour vous donner lors de mon séjour à Douai ». Mais heureusement, Demeny conserva ce cahier, et ces 22 poèmes, dont certains d'entre eux comptent parmi les plus célèbres de la langue française : Ma Bohème, Le Dormeur du Val... Versifié, d'une facture plus classique qu'Une Saison en Enfer, on trouve déjà dans ce recueil la modernité de Rimbaud, des images visionnaires qui inspireront les surréalistes et les premiers ciénastes.",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473075631/courses/douai.jpg',
  keywords: ""
  )
puts "Course douai created"
#
# ==================== OLD COURSES ====================
#
fables = Course.create!(
  author: lafontaine,
  category:litterature,
  title:"Les Fables de La Fontaine",
  date: 1694,
  description:"Mondialement célèbres, étudiées par tous les enfants de France, les fables de La Fontaine ne sont pourtant pas si simples à comprendre. De nombreux messages sont cachés, une philosophie cohérente se dégage, qui s'adresse souvent davantage aux adultes qu'aux enfants... La Fontaine se voit-il plus loup ou chien, cigale ou fourmi ? Je vous invite à explorer mes analyses pour mieux saisir la profondeur de ces textes fondamentaux de la langue française !",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473076357/courses/lafontaine.jpg',
  keywords: ""
  )
puts "Course fables created"
#
ile = Course.create!(
  author: marivaux,
  category:litterature,
  title:"L'île des Esclaves",
  date: 1725,
  description:"Sur l'île des esclaves, les rôles sont inversés, Arlequin le serviteur devient le maître d'Iphicrate et Cléanthis devient la maître de la noble Euphrosine... Cette situation de carnaval permet à Marivaux d'interroger les rôles sociaux de son époque. Sans être un plaidoyer contre l'esclavage, c'est un appel à la bienveillance et à l'humanité des maîtres, car il se pourrait bien qu'un jour chacun récolte ce qu'il a semé...",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473076963/courses/ile.jpg',
  keywords: ""
  )
puts "Course ile created"
#
domjuan = Course.create!(
  author: moliere,
  category:litterature,
  title:"Dom Juan",
  date: 1665,
  description:"Dom Juan grand seigneur méchant homme, libre-penseur et athée, ne respecte ni les valeurs de l’ancienne noblesse, ni celles de la religion. Il n’hésite pas à mentir à ses créanciers, à son père, et aux femmes qu’il séduit. Cette pièce est extraordinairement variée, à la fois comique et sérieuse : Molière au sommet de son art utilise tour à tour les procédés de la farce et de la tragédie. Lors des premières représentations, le public parisien l'acclame, mais elle est en même temps attaquée violemment par ceux qui craignent le charisme du personnage libertin... Ainsi, la pièce ne sera ni reprise ni imprimée du vivant de son auteur, mais sera redécouverte avec fascination au XIXe et au XXe siècle !",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473077748/courses/domjuan.jpg',
  keywords: ""
  )
puts "Course domjuan created"
#
lettres = Course.create!(
  author: montesquieu,
  category:litterature,
  title:"Lettres Persanes",
  date: 1721,
  description:"Usbek et Rica sont deux persans qui échangent leurs impressions de voyage à travers des lettres qu'ils envoient à leurs amis restés en Perse. Bien sûr, c'est une fiction, qui permet à Montesquieu de critiquer la société française, les parisiens, le roi, le pape... Le regard naïf des deux voyageur permet de faire ressortir toutes les absurdités du monde occidental, et Montesquieu s'en donne à coeur joie. Mais la charge satirique de ce roman épistolaire est très forte, l'auteur n'ose pas publier en son nom. Les Lettres persanes sont d'abord diffusées à Amsterdam, et Montesquieu prétend qu'il ne que le traducteur d'un paquet de lettres anonymes.",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473078483/courses/lettres.jpg',
  keywords: ""
  )
puts "Course lettres created"
#
suif = Course.create!(
  author: maupassant,
  category:litterature,
  title:"Boule de Suif",
  date: 1880,
  description:"Lors des soirées de Médan, chez Zola, se retrouvent quelques écrivains qui décident de publier ensemble un recueil de nouvelles. Maupassant écrit Boule de Suif, nouvelle qui sera immédiatement reconnue comme un chef-d'oeuvre. L'histoire se déroule pendant la guerre de 1870 contre la Prusse. 10 personnes, appartenant à des classes sociales variées, fuient la ville de Rouen en diligence. Parmi eux, Élisabeth Rousset, prostituée surnommée Boule de Suif, est méprisée par les autres. Arrêtés par les prussiens, l'officier leur fait une proposition : il ne les laissera partir que si Boule de Suif accepte de coucher avec lui...",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473098610/courses/suif.jpg',
  keywords: ""
  )
puts "Course suif created"
#
horla = Course.create!(
  author: maupassant,
  category:litterature,
  title:"Le Horla",
  date: 1887,
  description:"Dans cette nouvelle, chef-do'uevre de la littérature fantastique, Maupassant met en scène un personnage qui sombre dans la folie, et consigne son expérience dans un cahier journal. Petit à petit, l'impossible prend forme, le Horla devient une présence concrète, une incarnation de la peur elle-même... Jour après jour, il devient impossible de distinguer la réalité et l'hallucination... Maupassant rédige cette nouvelle alors qu'il est lui-même atteint par la syphilis, une maladie qui emportera l'écrivain dans la folie.",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473099107/courses/horla.jpg',
  keywords: ""
  )
puts "Course horla created"
#
jacques = Course.create!(
  author: diderot,
  category:litterature,
  title:"Jacques le Fataliste et son Maître",
  date: 1796,
  description:"Jacques le Fataliste raconte à son maître l'histoire de ses amours. Mais ils sont sans cesse interrompus, les aventures se succèdent sans logique, les personnages rencontrés racontent leur propre histoire. Les récits sont enchâssés, délayés, inachevés... Avec ce roman, Diderot expérimente les limites du genre romanesque, il s'adresse directement à son lecteur, à la fois pour s'assurer de sa complicité, pour le faire rire, et parfois, pour se moquer de lui...",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473098159/courses/jacques.jpg',
  keywords: ""
  )
puts "Course jacques created"
#
gargantua = Course.create!(
  author: rabelais,
  category:litterature,
  title:"Gargantua",
  date: 1534,
  description:"C’est le deuxième roman que Rabelais écrit, sous le nom d’Alcofribas Nasier (anagramme de François Rabelais). Après nous avoir raconté la vie de Pantagruel, maintenant il raconte celle de son père, Gargantua. Dans cet ouvrage, Rabelais aborde des sujets importants : l’éducation, l’art oratoire, la vie en société, la guerre. Mais il aborde tout cela avec beaucoup d’humour : les situations sont grotesques, les images sont exagérées, la vraisemblance est mise de côté. Le personnage principal représente bien le but de l’auteur : c’est un géant plein d’énergie, maladroit et grossier, mais bienveillant, et il deviendra très instruit grâce à son maître Ponocrates.",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473099533/courses/gargantua.jpg',
  keywords: ""
  )
puts "Course gargantua created"
#
dernierjour = Course.create!(
  author: hugo,
  category:litterature,
  title:"Le Dernier Jour d'un Condamné",
  date: 1829,
  description:"Le roman n’a pas été bien reçu à sa sortie, car les lecteurs ne comprenaient pas pourquoi le condamné à mort était anonyme. Victor Hugo explique dans une première préface qu’il voulait faire de son personnage un personnage représentatif de n’importe quel condamné à mort, et surtout pas un cas particulier : “le livre se veut une plaidoirie générale et permanente pour tous les accusés”. Le roman retrace les 24 dernières heures de la vie de ce condamné à mort, dans un long monologue angoissé. Ce projet permet à Victor Hugo de dénoncer toutes les absurdités de la condamnation à mort.",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473100142/dernierjour_shtrjq.jpg',
  keywords: ""
  )
puts "Course dernierjour created"
#
confessions = Course.create!(
  author: rousseau,
  category:litterature,
  title:"Les Confessions",
  date: 1782,
  description:"Lorsqu’il commence à rédiger ses Confessions, Jean-Jacques Rousseau a conscience qu’il commence un projet novateur. Les Confessions doivent avoir une dimension exemplaire, devenir “une pièce de comparaison pour l’étude du coeur humain”. Mais le discours de Rousseau n’est pas un discours philosophique, rationnel et logique. C’est justement par le langage des émotions et par la sincérité que Rousseau compte atteindre son but. Au concept de Vérité, Rousseau oppose celui d’authenticité.",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473099834/courses/confessions.jpg',
  keywords: ""
  )
puts "Course confessions created"
#
# ==================== THE TECHNIQUE COURSES ====================
#
corpus = Course.create!(
  category:methodo,
  title:"La question de corpus",
  description:"Cette épreuve du bac est un exercice de rapidité, et doit vous prendre moins d'une heure sur le temps total de l'épreuve. Il s'agit de confronter plusieurs extraits de texte pour en faire ressortir les points communs et les différences. Ma méthodologie consiste à faire ressortir le Comment (on prend 2 ou 3 outils techniques privilégiés). Ce sera le point commun transversal aux extraits. On verra alors que le Pourquoi (les effets que l'auteur souhaite produire sur le lecteur), sera différent pour chaque texte.",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473144037/courses/corpus.jpg'
)
puts "Course corpus created"

compose = Course.create!(
  category:methodo,
  title:"Le commentaire composé",
  description:"Pour bien réussir un commentaire composé, il faut avoir de la matière. C'est pourquoi je vous conseille de commencer par le Comment (quels sont les marques, les figures de styles, les effets de langage). En appliquant mes 5 grilles de lecture, vous serez capable de faire ressortir le sens profond du texte. Je vous donne ensuite la méthode pour organiser votre plan et rédiger le commentaire composé dans les règles de l'art !",
  picture: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473144023/courses/compose.jpg'
)
puts "Course commentaire composé created"
#
# ==================== GORIOT LECTURES ====================
#
goriot0 = Lecture.create!(
  course: goriot,
  title:"Résumé analyse illustré",
  video:"59bsBUAlWdc",
  description:'Balzac inscrit le père Goriot dans une grande fresque réaliste, La Comédie Humaine, où se mêle une foule de personnages. Comme il l’écrit dans l’avant propos de la comédie humaine, il va jusqu’à “concurrencer l’état civil”. L’Avant-Propos de la Comédie Humaine nous aide à comprendre tout l’intérêt et toute la profondeur du projet de Balzac : «  Le hasard est le plus grand romancier du monde : il n’y a qu’à l’étudier. La Société française est l’historien, je ne suis que le secrétaire. En dressant l’inventaire des vices, des vertus et des passions, et des caractères, peut-être pourrais-je écrire l’histoire oubliée par tant d’historiens, celle des mœurs. » Gardons en tête ce projet incroyable en parcourant les première pages du père Goriot.',
  payment: false
  )
puts "Lecture goriot0 created"
#
goriot1 = Lecture.create!(
  course: goriot,
  title:"Chapitre I (la pension Vauquer)",
  video:"1nLdvnfxxho",
  description:"Dans Le Père Goriot, Balzac raconte l’histoire d’un vieux père qui sacrifie tout à ses filles, au point de mourir seul dans la misère. En ce début de roman, la description de la pension Vauquer donne déjà des informations sur l’histoire qui va suivre. C’est là que vit le père Goriot avec d’autres pensionnaires. Le décor misérable nous amène à comprendre la pauvreté de condition des personnages qui vivent là. Comment cette description de la pension Vauquer nous fait entrer de plein pied dans cet univers complet où se déroule l’histoire du père Goriot ?",
  payment: false
  )
puts "Lecture goriot1 created"
#
goriot2 = Lecture.create!(
  course: goriot,
  title:"Chapitre I (le portrait de Vautrin)",
  video:"Ru7p2qM2-OU",
  description:"Les personnages balzaciens portent en eux une certaine quantité d’énergie, une force de la volonté, qui s’épuise si elle est mal utilisée. C’est un principe métaphysique qui va teinter le réalisme de Balzac d’une certaine couleur fantastique. C’est notamment cette idée qui fonde la métaphore de La Peau de Chagrin, où les désirs exaucés réduisent progressivement l’énergie vitale, et donc la longévité, de celui qui la possède. Le père Goriot est l’un de ces personnage qui s’épuise et s’éteint dans la quête impossible de contenter ses filles. Vautrin quand à lui est l’un de ces personnages dotés d’une énergie formidable. Avec son air jovial, ses favoris peints et son gros rire, il parvient à cacher à tout le monde sa véritable nature, beaucoup plus sombre et inquiétante. Ainsi, le portrait qu’en fait Balzac au début du père Goriot est parsemé d’indices révélant au lecteur toute l’ambiguïté de ce personnage, au passé trouble. Comment, à travers ce portrait de Vautrin, le narrateur nous invite-t-il à regarder au-delà des apparences pour saisir à la fois la profondeur d’un personnage, la satire d’une société, et les prémisses d’une intrigue romanesque ?",
  payment: false
  )
puts "Lecture goriot2 created"
#
goriot5 = Lecture.create!(
  course: goriot,
  title:"Chapitre III (l'arrestation de Vautrin)",
  video:"gcmSx7YUmbg",
  description:"Dans la pension Vauquer où vit le père Goriot, on trouve un personnage haut en couleur, Vautrin, qui se cache sous cette fausse identité, car c'est un bagnard en fuite, qui s'appelle en réalité Jacques Collin, et qui est connu par le surnom : Trompe-la-Mort. Notre passage est un coup de théâtre : les policiers viennent arrêter Vautrin qui décide de se rendre sans résister.",
  payment: false
  )
puts "Lecture goriot5 created"
#
goriot3 = Lecture.create!(
  course: goriot,
  title:"Chapitre IV (l'agonie du père Goriot)",
  video:"YLozB3Wa8Xw",
  description:"On trouve dans la Comédie Humaine une inspiration provenant des comédies de Molière. Avez vous remarqué que les personnages de Molière sont incorrigibles ? Ce sont des monomaniaques inguérissables. Le malade imaginaire reste hypocondriaque, l’avare reste avare jusqu’au bout, le misanthrope finit par s’isoler complètement. De même le père Goriot continuera d'espérer l'amour de ses filles jusqu'à son dernier souffle. Mais le père Goriot est aussi un personnage tragique. À l'image de Phèdre, il n'est ni tout à fait innocent, ni tout à fait coupable. Victime d'une passion qui le dépasse, il s'est pourtant lui-même condamné à une fin terrible. À l'image d'Oedipe, le père Goriot a tous les éléments en main pour déchiffrer son destin, mais il restera aveugle jusqu'au dernier moment. Malgré cette inspiration provenant du théâtre, le projet de Balzac reste romanesque et réaliste : il s'agit de montrer au lecteur la cruauté du monde réel, et de faire tomber les illusions du jeune Rastignac. C’est avec lui que le lecteur assiste à cette longue agonie, rapportée sans atténuations, de manière directe. Comment la mise en scène du destin tragique du père Goriot révèle-t-il un projet romanesque réaliste plus large, où les illusions mènent à un pathétique gaspillage des forces vitales ?",
  payment: false
  )
puts "Lecture goriot3 created"
#
goriot4 = Lecture.create!(
  course: goriot,
  title:"Chapitre IV (le Convoi funèbre)",
  video:"jlw4pnntIoc",
  description:"Rastignac est un personnage qui reste présent à travers toute la Comédie Humaine. On le retrouve effectivement dans plusieurs romans de Balzac après le Père Goriot : Le Bal de Sceaux, Les illusions perdues, Le Cabinet des Antiques, La Peau de Chagrin, La Maison Nucingen, etc. Après la mort du père Goriot, Rastignac deviendra un personnage cynique et arriviste, prêt à tout pour réussir. Il parviendra effectivement à faire son chemin dans la haute société, grâce à des opérations frauduleuses et à des luttes d’influence. Notre passage est passionnant, car nous y assistons en direct à la métamorphose du jeune homme. L’énergie gaspillée toute sa vie par le père Goriot, l’ingratitude de ses filles à son égard, l’injustice de son abandon, tout cela provoque une forte indignation chez le jeune Rastignac. Lors d’un moment de basculement qui touche au sublime, cette énergie est transformée en volonté de revanche sur le monde, sous le regard quelque peu ironique du narrateur. Comment Balzac nous montre-t-il la métamorphose du jeune Rastignac par une mise en scène de l’enterrement du père Goriot, où l’indignation perce à travers le regard distancié du narrateur ?",
  payment: false
  )
puts "Lecture goriot4 created"
#
# ==================== FLEURS LECTURES ====================
#
fleurs1 = Lecture.create!(
  course: fleurs,
  title:"L'Albatros",
  video:"-b_t3Refcl8",
  description:"Chez Baudelaire, le spleen, c’est ce mal être, ce sentiment d’exil que l’on ressent lorsqu’on compare l’idéal et la réalité. Justement, l’Albatros parle de cela : l’oiseau, à l’aise dans les airs, est moqué dès qu’il se trouve à terre. Cette petite anecdote a été inspirée à Baudelaire lors d’un voyage en bateau. Ironiquement d’ailleurs, ce voyage qui devait l’amener en Inde s’est interrompu à l’île Maurice. Dans ce poème, l’anecdote a une valeur de parabole, la figure du poète est mise en parallèle avec l’oiseau, afin de faire comprendre au lecteur la sensation d’incompréhension, la solitude de l’artiste en quête de beauté. Baudelaire fait partie de cette génération de poètes décadents, que Verlaine a rassemblé sous l’appellation de poètes maudits. La déchéance de l’oiseau majestueux lorsqu’il se trouve au sol représentera pour Baudelaire la condition du poète, inadapté à la réalité et incompris de ses contemporains. Comment Baudelaire invite-t-il le lecteur à suivre la mésaventure de l’albatros pour mieux illustrer sa conception de la condition du poète ?",
  payment: false
  )
puts "Lecture fleurs1 created"
#
fleurs2 = Lecture.create!(
  course: fleurs,
  title:"À une Passante",
  video:"aXZEa8C_Vpc",
  description:"Dans un recueil d’essais intitulé Le Peintre de la vie Moderne, Baudelaire fait l’éloge des aquarelles de Constantin Guys : « il s’agit pour lui de dégager de la mode ce qu'elle peut contenir de poétique dans l'historique, de tirer l'éternel du transitoire ». Et il en profite pour définir sa propre conception de la beauté moderne : « Le Beau est toujours composé [...] d’un élément éternel et d’un élément relatif, circonstanciel ». C’est exactement ce que Baudelaire fait dans ce poème : il utilise l’allégorie de la passante pour faire un manifeste esthétique, où la beauté apparaît paradoxalement éternelle et transitoire, atemporelle et circonstanciée. Comment Baudelaire met-il en scène cette rencontre impossible, de manière à illustrer toute une réflexion sur la beauté et la création artistique ?",
  payment: false
  )
puts "Lecture fleurs2 created"
#
fleurs3 = Lecture.create!(
  course: fleurs,
  title:"Correspondances",
  video:"nkMLaqjmW-Q",
  description:"Les Correspondances : ce poème est fondateur dans l’esthétique de Baudelaire, car c’est dans ce texte qu’il révèle l’importance de la figure de la synesthésie dans les Fleurs du Mal « Les couleurs, les parfums et les sons se répondent. » Mais cela va plus loin qu’une simple association entre perceptions : chez Baudelaire ce n’est plus seulement l’Art qui décrit la Nature, mais un dialogue où la Nature tient aussi un discours sur l’Art. Le Poète est alors celui qui est capable de déchiffrer les signes cachés de l’univers. Cette idée va marquer les artistes qui viennent après lui, car elle est à la fois musicale, picturale, architecturale...",
  payment: false
  )
puts "Lecture fleurs3 created"
#
fleurs4 = Lecture.create!(
  course: fleurs,
  title:"Parfum Exotique",
  video:"yy744QizU8I",
  description:"Chez Baudelaire, l’idéal est intimement lié à l’idée d’un ailleurs, toujours plus lointain, sans doute inatteignable... Par exemple, dans le sonnet « À une Passante », le poète décrit une femme, qui incarne la beauté : « Ne te verrais-je plus que dans l’éternité // Ailleurs, bien loin d’ici, trop tard, jamais peut-être. » Bien loin d’ici… C’est cela qui rend toute son importance au thème du voyage. Dans notre poème, Baudelaire semble aussi s’adresser à une femme, mais il déploie tout de suite, à travers son parfum, un paysage exotique extrêmement riche, où les perceptions créent des réseaux de symboles, décrivant un certaine forme d’idéal. Comment notre sonnet transmet-il une vision de l’idéal baudelairien à travers la description d’un paysage exotique, vivant, et plein de sensualité ?",
  payment: false
  )
puts "Lecture fleurs4 created"
#
fleurs5 = Lecture.create!(
  course: fleurs,
  title:"Spleen",
  video:"Ih2IBqWhe6E",
  description:"Baudelaire utilise un mot anglais, le Spleen, pour désigner cette émotion faite d’angoisse et d’ennui, issue d’une profonde méditation sur le temps et la mort. Dans notre poème, Baudelaire met en scène tout un univers allégorique, pour mieux représenter aux yeux du lecteur ce sentiment métaphysique. Vous allez voir que ses images puisent dans des références picturales et littéraires variées : la Bible, la mythologie, la Renaissance, le romantisme, etc. Comment Baudelaire représente-t-il le Spleen, à travers un univers symbolique en continuité et en rupture avec des motifs traditionnels dans l’Histoire des Arts ?",
  payment: false
  )
puts "Lecture fleurs5 created"
#
fleurs6 = Lecture.create!(
  course: fleurs,
  title:"Élévation",
  video:"-PgGpuYIAYg",
  description:"Baudelaire est connu pour avoir décrit le Spleen, cette sensation d’angoisse qu’il représente avec des images sombres, associées à des mouvements descendants. Écoutez par exemple le tout début de ce poème consacré au Spleen : « Quand le ciel bas et lourd pèse comme un couvercle // Sur l’esprit gémissant en proie aux longs ennuis // Et que de l’horizon embrassant tout le cercle // Il nous verse un jour noir plus triste que les nuits […] » On retrouve bien dans ces vers une sensation de poids et de lourdeur qui nous tire vers le bas. Au contraire, dans le poème Élévation, on trouve dès le titre un mouvement ascendant. Diamétralement opposé au Spleen, c’est un poème qui se trouve du côté de l’idéal, où l’esprit se déplace librement dans un espace lumineux et serein. À travers le vertige de l’inspiration poétique, le travail intellectuel procure un véritable plaisir des sens. L’imagination permet au poète d’entrevoir les possibilités infinies contenues dans la réalité. Comment Baudelaire parvient-il dans ce poème à décrire les activités de l’esprit comme un plaisir sensuel, capable de rendre compte de la profondeur infinie de l’univers ?",
  payment: false
  )
puts "Lecture fleurs6 created"
#
fleurs7 = Lecture.create!(
  course: fleurs,
  title:"La Cloche Fêlée",
  video:"t-T_MkEwi-w",
  description:"Baudelaire emprunte le mot Spleen à l'anglais pour désigner une émotion de lassitude et de désespoir. Il renouvelle en fait le thème de la mélancolie, qui est très présent à travers l'Histoire des Arts. La Cloche fêlée est le 76e poème de la partie Spleen et Idéal dans Les Fleurs du Mal, et il précède 4 poèmes qui s'intitulent Spleen : ce sonnet prépare et annonce l'arrivée de ce sentiment terrible. La cloche Fêlée, c'est un peu le glas qui sonne la mort de l'inspiration exaltée. Comment cette allégorie de la cloche fêlée, illustrant le travail d'écriture du poète en proie au Spleen, permet-elle à Baudelaire de construire un véritable manifeste esthétique ?",
  payment: false
  )
puts "Lecture fleurs7 created"
#
# ==================== ETRANGER LECTURES ====================
#
etranger0 = Lecture.create!(
  course: etranger,
  title:"Résumé analyse illustré",
  video:"2uJuSpdNbHE",
  description:"Un homme est condamné à mort, pour un meurtre absurde. Provoqué par quoi ? Le soleil, la chaleur ? Pourquoi ces quatre coups de feu sur le corps inerte de l'Arabe ? Pas d'excuse ni d'explication possible. Avec ce roman, Camus nous fait rencontrer de l'absurdité dans toute sa violence. Le personnage principal, Meursault, raconte les événements de sa vie de façon étrangement objective, sans émotion. Mais derrière cette apparente simplicité, le lecteur fait l'expérience d'une vision du monde effarante. Avec Meursault, nous passons de la stupeur à la révolte, avant de découvrir enfin une réconciliation possible avec l'absurdité du monde.",
  payment: false
  )
puts "Lecture etranger0 created"
#
etranger1 = Lecture.create!(
  course: etranger,
  title:"Partie 1, chapitre 1 (incipit)",
  video:"u25-7trnSHM",
  description:"« Aujourd’hui, maman est morte. Ou peut-être hier, je ne sais pas. » Voilà les premiers mots très célèbres de ce roman d’Albert Camus. Le passé composé du verbe mourir nous met brutalement devant le fait accompli. Cela provoque comme une douche froide sur le lecteur qui pouvait s’attendre à un discours pathétique ou un éloge funèbre. Ce décalage crée un certain malaise. C’est une manière pour Camus de nous faire prendre conscience du sentiment d’absurdité. Comment l’écriture blanche de Camus, incarnant la voix de l’Étranger, crée un décalage avec nos attentes, ce qui annonce à la fois la culpabilité du narrateur, et notre rencontre avec l’absurdité du monde ?",
  payment: false
  )
puts "Lecture etranger1 created"
#
etranger2 = Lecture.create!(
  course: etranger,
  title:"Partie 1, chapitre 6 (le meurtre)",
  video:"_otAuvsLVQ0",
  description:"C’est l’extrait célèbre et controversé, où le personnage principal, Meursault, tue un arabe sur la plage. Pour comprendre notre extrait, il faut savoir que Meursault est ami avec Raymond, un proxénète qui est en conflit avec des arabes, à cause d’une fille. Bref, il se trouve au milieu d’une affaire pas très nette. À l’occasion d’une sortie à la plage, ils croisent le groupe d’Arabes. Meursault désarme Raymond, justement pour éviter un accident, et ils s’en vont. Mais plus tard, il se retrouve seul sur la plage et il voit de loin l’un des arabes, qui est seul lui aussi.  Tous les éléments du drame sont en place. Le lecteur va assister au coup de feu qui semble provoqué par des raisons confuses, à cause de la chaleur, du soleil, peut-être à cause de la fatalité. Comme d’habitude, Meursault paraît étranger à ce qui se passe autour de lui, comme dénué de volonté. Et pourtant, il tirera encore 4 coups de feu sur le corps inerte. C’est sans doute le moment du roman ou le sentiment d’absurdité est le plus fort. Comment cette scène de basculement pose-t-elle la question de la culpabilité de Meursault en provoquant chez le lecteur le sentiment de l’absurde ?",
  payment: false
  )
puts "Lecture etranger2 created"
#
etranger3 = Lecture.create!(
  course: etranger,
  title:"Partie 2, chapitre 4 (le procès)",
  video:"MKTOafUF42Q",
  description:"Ce passage est fondamental, car il met en débat une question centrale du roman : la culpabilité de Meursault. Le procureur retrace les faits, impossibles à nier : Meursault a tiré au revolver sur un homme, et il a même tiré 4 coups de feu supplémentaires sur le corps inerte.  Mais le lecteur a été le premier témoin de cette scène : il connaît l’enchaînement des causes et des conséquences, le rôle du soleil, la complicité des éléments naturels. Ainsi, le réquisitoire du procureur passe à côté de la vérité, et se concentre sur la personnalité de l’accusé, sans réussir à la saisir. En même temps, le regard naïf de Meursault sur son propre jugement fait ressortir l’aspect artificiel des rôles joués aussi bien par la défense que par l’accusation. Comment Camus utilise-t-il le regard innocent de Meursault pour représenter un procès absurde, où chacun joue un rôle déterminé à l’avance ?",
  payment: false
  )
puts "Lecture etranger3 created"
#
etranger4 = Lecture.create!(
  course: etranger,
  title:"Partie 2, chapitre 5 (la dernière nuit)",
  video:"",
  description:"Il s’est passé quelque chose d’important dans le passage précédent : un moment de révolte, qui débouche maintenant sur un moment d’accalmie. Meursault n’a pas accepté les explications de l’aumônier. Symboliquement, il a renoncé aux doctrines qui donnent une explication unique au sens de la vie. Mais il est à la veille de son exécution. Dans cette fin de roman, Camus illustre de façon à la fois poétique et mystérieuse des réflexions métaphysiques qui découlent de la notion d’absurde explorée tout au long du roman. À l’approche de la mort, Meursault évolue encore, de l’homme absurde, à l’homme révolté, à encore autre chose. Pour bien expliquer ce texte, je vais m’appuyer, beaucoup plus que d’habitude, sur d’autres oeuvres et d’autres passages du roman. Comment cette fin de roman transcrit par des symboles et de façon esthétique une évolution profonde du personnage vers des valeurs refondées par l’exigence d’absurdité ?",
  payment: false
  )
puts "Lecture etranger4 created"
#
# ==================== VOYAGE LECTURES ====================
#
voyage0 = Lecture.create!(
  course: voyage,
  title:"Résumé analyse illustré",
  video:"2MW_4a9JR1A",
  description:"Voyage au bout de la Nuit, c'est d'abord une voix. Celle de Ferdinand Bardamu, le personnage narrateur. Il nous entraîne avec lui dans une aventure effroyable en 4 parties : La Première Guerre Mondiale, les colonies, les États-Unis, l'Europe. Le pessimisme de Céline est total : seuls quelques personnages exceptionnels échappent à la méchanceté et à l'égoïsme généralisé. C'est une philosophie profonde, car son rapport à l'humanité est fondé à la fois sur l'amour et la haine. On est très loin d'un antisémitisme simpliste comme on peut le voir dans ses pamphlets Bagatelles pour un massacre, L'École des Cadavres. Ces textes médiocres ne doivent pas nous faire passer à côté du chef-d'oeuvre.",
  payment: false
  )
puts "Lecture voyage0 created"
#
voyage1 = Lecture.create!(
  course: voyage,
  title:"Partie 1, chapitre 1 (incipit)",
  video:"ng2sPX-y-YE",
  description:"Dans le premier chapitre de Voyage au Bout de la Nuit, Ferdinand Bardamu nous raconte comment il s'est enrôlé dans cette armée. Pour rien, par bravade, presque malgré lui. À cause de la propagande, à cause de son ami Arthur Ganate. Le passage que nous allons étudier est le premier paragraphe du roman. Le lecteur est entraîné par le narrateur dans un café parisien, dans une discussion de comptoir avec son ami Arthur Ganate.  Rien d'académique dans la manière parler, le style de Céline, c'est une langue à la fois orale et musicale. Mais cette petite musique nous annonce déjà qu'on commence une sorte de parcours initiatique dégradé ; avec un antihéros embarqué malgré lui dans une aventure insensée. Comment la mise en scène de la parole et le style oral de cet incipit nous entraînent dans un voyage à travers un monde à la fois sombre et burlesque ?",
  payment: false
  )
puts "Lecture voyage1 created"
#
voyage2 = Lecture.create!(
  course: voyage,
  title:"Partie 1, chapitre 2 (Découverte de la guerre)",
  video:"yCiZGINvE78",
  description:"Dans notre extrait, Bardamu réalise pour la première fois l'horreur de la guerre dans toute son étendue. C'est un moment de basculement. Jusqu'ici, il voyait bien des soldats mourir, mais cette fois-ci, la compréhension est plus globale, plus profonde : en voyant l'inconscience de son colonel, Bardamu réalise que la bravoure est à l'origine d'un mécanisme tragique qui va mener implacablement toute l'humanité à sa perte. Le tableau dépeint par Céline est effarant : la première guerre mondiale apparaît bien comme la première guerre moderne, où les moyens techniques de la société industrielle sont mis au service de la destruction. Comment Céline parvient-il à montrer l'absurdité tragique de la guerre moderne à travers un témoignage ironique qui renverse les valeurs habituelles du registre épique ?",
  payment: false
  )
puts "Lecture voyage2 created"
#
voyage3 = Lecture.create!(
  course: voyage,
  title:"Partie 2, chapitre 11 (Les Colonies)",
  video:"ZNgHO861Iek",
  description:"Notre extrait ouvre la deuxième partie du roman : Ferdinand Bardamu vient tout juste d'arriver dans les colonies. Mais c'est avec un regard rétrospectif et satirique qu'il nous décrit l'organisation sociale de l'intérieur. La métaphore de la chimie permet d'illustrer les interactions entre ces différents éléments mélangés en vase clos. Les militaires, les fonctionnaires et les commerçants sont en conflits permanents, ce qui permet à un personnage central, le gouverneur de mieux les manipuler... Et tout ce petit monde domine les Noirs, tout en bas de cette échelle sociale. Comment ce tableau satirique des colonies représente-t-il une organisation sociale malsaine, révélant la vision pessimiste de Céline sur la Nature Humaine ?",
  payment: false
  )
puts "Lecture voyage3 created"
#
voyage4 = Lecture.create!(
  course: voyage,
  title:"Partie 3, chapitre 15 (New York)",
  video:"coxo9HOzD4E",
  description:"L'Amérique, dans les années 20, ce sont les années folles, le développement de la consommation de masse. On les appelles les Roaring Twenties, les années d'insouciance, qui correspondent aux années folles en Europe. Après son expérience de la guerre, qui décompose l'Europe… Après son départ calamiteux du continent africain, où les colonies pourrissent dans la chaleur et la maladie et la perversion... Devenu galérien à son insu en essayant de fuir la compagnie Pordurière... On peut s'imaginer un nouveau départ après tout, dans le Nouveau Monde ! Mais dès les première lignes de cette troisième partie, le lecteur partage la surprise de Ferdinand : tous ses horizons d'attente sont mis à mal. La personnification de la ville américaine à travers les brumes nous laisse entrevoir un continent pas moins hostile que les autres. Comment la découverte de New York est-elle mise en scène pour déjouer les attentes du lecteur, et annoncer la prochaine étape d'un voyage à travers un monde toujours plus hostile ?",
  payment: false
  )
puts "Lecture voyage4 created"
#
voyage5 = Lecture.create!(
  course: voyage,
  title:"Partie 4, chapitre 20 (Bébert)",
  video:"xmRJtmHyRFQ",
  description:"Ferdinand Bardamu poursuit son expérience initiatique vers le bas, toujours plus profondément dans la nuit, c'est à dire dans la découverte horrifiée de la nature humaine. Dans la quatrième partie, notre personnage narrateur est devenu médecin, il s'est installé en région parisienne, à la Garenne-Rancy, lieu imaginaire qui se nourrit de noms existants. Rancy provient sans doute de Drancy, en île de France, mais il évoque surtout l'adjectif rance : quelque chose qui, en vieillissant, est devenu sale et malodorant. La puanteur et la poussière représentent bien les commérages qui entachent le voisinage, et parmi lesquels émerge l'innocence de ce personnage de Bébert. C'est l'un des rares personnages innocents, et positifs du Voyage au Bout de la Nuit, mais cette scène de rencontre annonce déjà sa maladie, et l'impuissance du narrateur à le sauver. Comment cette scène de rencontre, annonçant déjà le destin du personnage, illustre une réflexion pessimiste sur la vulnérabilité de l'innocence humaine ?",
  payment: false
  )
puts "Lecture voyage5 created"
#
voyage6 = Lecture.create!(
  course: voyage,
  title:"Partie 4, chapitre 45",
  video:"tQLNslM4QJo",
  description:"Dans notre passage, qui est l'avant-dernière scène du livre, Ferdinand semble admirer le courage de Robinson, car il est mort pour une idée. Lui, Bardamu, ne se sent pas capable d'en faire autant ! Mais derrière le discours du narrateur, on perçoit l'ironie de l'écrivain : mourir au nom d'une idée, c'est encore et toujours la guerre. Il s'agit toujours de fabriquer des Héros prêts à mourir pour des mots : l'héroïsme, l'honneur, la Patrie. Céline l'affirme souvent : il n'est pas un écrivain à idées. Ainsi, le discours admiratif de Ferdinand cache en fait une réhabilitation de la lâcheté de l'homme qui ne se cherche pas d'excuses pour vivre ou pour mourir. Le style de Céline, avec ses phrases inachevées, cette écriture qui continue après la fin, cette petite musique qu'il faut recommencer malgré le labeur qu'elle représente ; tout cela nous révèle une Nuit sans fond, exténuante, interminable, démesurée. Comment cette prolongation de l'écriture après la mort de Robinson donne-t-elle des clés de compréhension du style de Céline, comme refus de toute idée ?",
  payment: false
  )
puts "Lecture voyage6 created"
#
# ==================== CID LECTURES ====================
#
lecid0 = Lecture.create!(
  course: lecid,
  title:"Résumé analyse illustré",
  video:"FoYlgnjN4Y0",
  description:"Corneille n’a pas inventé les personnages, qui ont réellement existé dans l’espagne du 11e siècle ! Le Cid était un mercenaire chrétien, héros de la Reconquista. Réputé invaincu, il devint rapidement une figure légendaire. C’est dans la Cathédrale Santa María de Burgos, que vous pourrez voir son tombeau, et celui de son épouse Chimène. La pièce de Corneille est aussitôt attaquée. Jean Mairet accuse Corneille d'avoir plagié Les Enfances du Cid, une pièce espagnole de Guillén de Castro. Avec Georges de Scudéry, un autre dramaturge, ils reprochent à Corneille de ne pas avoir respecté les règles du théâtre classique. Tous ces débats qui suivirent la publication de la pièce, c'est ce qu'on appellera la querelle du Cid.",
  payment: false
  )
puts "Lecture cid0 created"
#
lecid1 = Lecture.create!(
  course: lecid,
  title:"Acte I scène 1 (Ô rage, ô désespoir)",
  video:"uSijAISOfBY",
  description:"Dans notre passage, Don Diègue se retrouve seul après avoir été battu par Don Gomès, le comte de Gormas. C’est un monologue* qui permet au spectateur de voir le déroulement des pensées du personnage : malgré son expérience, son bras lui a fait défaut. Il est trop âgé désormais pour se défendre seul, il fera donc appel à son fils Rodrigue pour le venger de Don Gomès. Mais dans les scènes précédentes, nous avons appris que Rodrigue est fiancé à Chimène, la fille de Don Gomès qu’on appelle Le Comte. Cette scène est donc centrale dans la mise en place de l’intrigue. Mécaniquement, par une série de cause et de conséquence, Rodrigue sera amené à combattre le père de Chimène et à le tuer. Comment ce monologue spectaculaire met-il en place l’intrigue de la pièce, de manière logique et implacable ?",
  payment: false
  )
puts "Lecture cid1 created"
#
lecid2 = Lecture.create!(
  course: lecid,
  title:"Acte I scène 6 (les stances)",
  video:"hDLA1Y2Hn3k",
  description:"Cette scène a un rôle de pivot dans notre pièce : Rodrigue va devoir passer par plusieurs étapes avant de prendre sa décision. C’est ce qu’on appelle un discours  délibératif. Or, vous allez voir que Corneille respecte les codes très précis de ce type de discours. En effet, les 6 stances du monologue de Rodrigue correspondent précisément aux 6 parties du discours tel qu’il est théorisé par Aristote dans la Rhétorique : l’exorde, la narration, la division, la confirmation, la réfutation, et enfin la péroraison. Mais pourquoi utiliser ces concepts vieux comme l’antiquité ? Hé bien d’abord parce que Corneille s’appuie dessus, et ensuite parce qu’ils vont nous aider à comprendre le rôle de chacune des stances : c’est en effet un véritable parcours qui se présente sous nos yeux. À la fin de sa réflexion, Rodrigue réalise qu’en fait, il n’a pas le choix : son questionnement est un faux dilemme... La bonne décision devient évidente et irréfutable. Le moment de pause dans l’action peut alors prendre fin.",
  payment: false
  )
puts "Lecture cid2 created"
#
lecid3 = Lecture.create!(
  course: lecid,
  title:"Acte II, scène 2 (le duel)",
  video:"MpiM89xZN10",
  description:"Don Rodrigue ayant résolu de venger son père se retrouve enfin face à l’auteur de ce forfait : Don Gomès, le comte de Gormas. Mais cet homme est aussi le père de sa fiancée Chimène... Le jeune homme a déjà renoncé à elle car il sait que son honneur doit passer avant tout. D’ailleurs, il n’a pas le choix, Chimène n’épousera pas un homme sans honneur de toutes les façons ! Cette scène apparaît comme une véritable joute verbale, un combat de mots. Elle précipite le duel à l’épée qui ne sera pas représenté sur scène pour des raisons de bienséance. Mais tout n’est pas si simple : les deux hommes s’admirent mutuellement. Et c’est ça qui fait la beauté de cette scène : ils ne se confrontent pas pour ce qui les oppose, mais au contraire pour ce qui les lie : le sens de l’honneur et du devoir. Comment Corneille utilise-t-il les ressorts du théâtre pour mettre en scène une confrontation entre deux personnages dont les valeurs communes rendent paradoxalement leur duel inévitable ?",
  payment: false
  )
puts "Lecture cid3 created"
#
lecid4 = Lecture.create!(
  course: lecid,
  title:"Acte IV, scène 3 (Nous partîmes cinq-cent)",
  video:"8_E35kX_HDU",
  description:"Le jeune Rodrigue vient de remporter sa première grande victoire. C’est le roi lui-même qui vient de lui donner cette appellation du Cid, qui apparaît du coup comme un titre honorifique. Rodrigue va maintenant raconter la bataille devant le roi. C’est un récit qui appartient au registre épique. Dans l’auditoire, nous avons aussi son père Don Diègue, ainsi que deux autres gentilshommes castillans. Mais bien sûr, l’enjeu est aussi de captiver la salle pleine de spectateurs. Or il est très difficile de représenter un récit au théâtre. La mise en scène est forcément limitée : tout doit passer par les mots. Ainsi, Rodrigue va devoir utiliser des procédés de narration variés pour dépeindre les péripéties de la bataille. Donner à voir une scène, avec une peinture saisissante, c’est une figure de style, qu’on appelle l’hypotypose : une description vivante et animée pour frapper un auditoire. Toute la tirade du Cid peut être considérée comme une hypotypose. Comment Rodrigue parvient-il à captiver son auditoire avec un récit de bataille, qui utilise les ressorts du registre épique et de l’hypotypose ?",
  payment: false
  )
puts "Lecture cid4 created"
#
# ==================== BOVARY LECTURES ====================
#
bovary0 = Lecture.create!(
  course: bovary,
  title:"Résumé analyse illustré",
  video:"_31zyVWwvuQ",
  description:"Madame Bovary rêve de romance, de nacelles au clair de lune, d'enlèvements... Mais elle est mariée à un médiocre officier de santé, Charles, qui ne lui apporte que des déceptions... Tout le long du roman, nous découvrons les tentatives désespérées de cette jeune femme qui aimerait échapper au quotidien de sa ville de Province. Avec une ironie cinglante, Flaubert nous montre à la fois la vanité de ces efforts, et la terrible platitude de ces personnages plus vrais que nature. Ce roman, véritable chef-d'oeuvre de la littérature française, fut poursuivit en justice pour outrage à la morale publique et religieuse et aux bonnes moeurs.",
  payment: false
  )
puts "Lecture bovary0 created"
#
bovary1 = Lecture.create!(
  course: bovary,
  title:"Partie I, chapitre 1 (incipit)",
  video:"9VLWSusv4pc",
  description:"Charles Bovary a 15 ans, et il entre au collège à Rouen. C'est un gars de la campagne, portant une casquette ridicule, et tellement timide qu'il ne parvient pas à prononcer son propre nom ! Il devient rapidement la risée de ses camarades. Ce début de roman déroute les attentes du lecteur, qui essaye de situer les personnages, le narrateur, le rapport avec le titre, etc. Flaubert nous donne des fausses pistes, mais c’est pour mieux révéler son projet littéraire. Comment ce début de roman, en présentant Charles Bovary comme le personnage principal, parvient à dérouter le lecteur tout en lui donnant des indications sur le projet de l’auteur ?",
  payment: false
  )
puts "Lecture bovary1 created"
#
bovary2 = Lecture.create!(
  course: bovary,
  title:"Partie 1, chapitre 3 (la rencontre avec Charles)",
  video:"bbjFiwJs4eo",
  description:"C’est la première fois que Charles et Emma se retrouvent seuls. Ils n’échangent pas beaucoup, mais il se passe beaucoup de choses entre les mots. C’est un passage à la fois plein d’émotions et de sensualité… Mais c’est surtout l’occasion pour Flaubert de nous offrir un double niveau de lecture. Derrière le cliché romantique de la rencontre amoureuse, on peut voir transparaître une réalité plus triviale. Charles est veuf, il n’est pas très doué pour jouer le rôle du séducteur. Emma est issue d’une famille simple, mais elle s’évade en lisant des romans, du coup, elle surjoue le badinage amoureux.  Par petites touches imperceptibles, Flaubert rend visible ces différences, et le déséquilibre fondamental de ce couple. Vous allez voir que de nombreux indices font déjà référence aux malheurs qui arrivent dans la suite du roman : l’adultère, le suicide d’Emma. Comment le style de Flaubert, jouant à la fois sur le point de vue de Charles et la distanciation ironique, prépare l’avenir du couple qui est en train de se former.",
  payment: false
  )
puts "Lecture bovary2 created"
#
bovary3 = Lecture.create!(
  course: bovary,
  title:"Partie 3, chapitre 8 (la mort d'Emma)",
  video:"5Hu8Dd0cKmw",
  description:"Notre passage, celui de la mort d’Emma Bovary, est sans doute celui qui a provoqué le plus d’indignation. Incapable de rembourser ses dettes, abandonnée par son amant Rodolphe, Emma a avalé une forte dose d’arsenic. L’agonie est longue, Charles est allé chercher un médecin renommé dans la région, M. Canivet, qui a rapidement compris que le cas était désespéré. La mort d’Emma est effrayante, les détails réalistes empêchent toute interprétation romantique. La mise en scène, les jeux de regards, les procédés d’ironie rendent impossible le sublime dont Emma a pourtant rêvé toute sa vie. Comment Flaubert met-il en scène la mort d’Emma Bovary, de manière confronter l’aveuglement de ce personnage, à la cruauté de la réalité ?",
  payment: false
  )
puts "Lecture bovary3 created"
#
bovary4 = Lecture.create!(
  course: bovary,
  title:"Partie 1, chapitre 6 (Les lectures d'Emma)",
  video:"jJE1fHMLadc",
  description:"Au chapitre 6, Emma vient tout juste de se marier. Flaubert fait un retour dans le passé à l'époque où elle était une jeune fille élevée par les bonnes soeurs. Au cinéma, on dirait que notre passage est un flash back, en littérature, on appelle ça une analepse, un retour dans le passé. Dans le couvent, le seul contact d'Emma avec le monde extérieur se faisait à travers les romans à l'eau de rose qu'une vieille fille apportait aux jeunes pensionnaires. C'est l'occasion pour Flaubert de donner son avis sur l'éducation des jeunes filles à son époque. Il en profite aussi pour critiquer l'influence néfaste sur elles d'une littérature sentimentale éloignée de la réalité. Comment ce retour en arrière sur l'éducation d'Emma Bovary permet-il à Flaubert de préparer le destin tragique de son personnage principal tout en réaffirmant son projet satirique et réaliste ?",
  payment: false
  )
puts "Lecture bovary4 created"
#
bovary5 = Lecture.create!(
  course: bovary,
  title:"Partie 2 chapitre 12 (dialogue avec Rodolphe)",
  video:"6BC-ScE4Mx0",
  description:"Dans notre passage, les deux amants dialoguent. Emma Bovary rêve de confidences, de serments, de déclarations amoureuses. Rodolphe, badine, fait des calembours. Le lecteur réalise que l'écart croissant entre les deux amants est désormais irrémédiable. À travers la dérive de ce couple dont la fusion est impossible, Flaubert interroge les motivations de l'écrivain. N'a-t-il pas un rêve semblable à celui de madame Bovary : utiliser l'écriture pour se sentir enfin compris des autres ? À mon sens, c'est dans ce passage que Flaubert est le plus proche et le plus empathique avec son personnage. Le désarroi de Madame Bovary, un peu dramatisé, un peu surjoué, reste émouvant, parce qu'il est authentique. Comment ce dialogue, qui révèle l'incompréhension croissante entre deux amants, permet-il à Flaubert de mener une réflexion sur sa propre écriture et sur l'Histoire des Arts ?",
  payment: false
  )
puts "Lecture bovary5 created"
#
bovary6 = Lecture.create!(
  course: bovary,
  title:"Question de corpus sur le roman",
  video:"uuY5wtJfmIE",
  description:"Je réalise pas à pas une question de corpus sur la question du rire dans le roman. Je vais donc comparer 3 extraits : Madame Bovary (Flaubert), L'Homme qui Rit (Victor Hugo) et Le Moulin de Pologne (Jean Giono).",
  payment: false
  )
puts "Lecture bovary6 created"
#
# ==================== MARSEILLAISE LECTURES ====================
#
marseillaise1 = Lecture.create!(
  course: marseillaise,
  title:"Analyse des paroles",
  video:"BiBmzvot7Do",
  description:"La Marseillaise est l'hymne national de la France, mais c'est aussi un symbole qui dépasse la représentation d'un pays. Le fait qu'elle soit traduite, chantée à travers le monde ; le fait même qu'elle soit souvent discutée et remise en question, tout cela montre à quel point La Marseillaise est vivante aujourd'hui. En quoi les paroles de la Marseillaise invitent-elles, au-delà de leur interprétation purement historique et contextuelle, à réfléchir sur des valeurs qui restent des sujets de débat à travers les siècles jusqu'à aujourd'hui ?",
  payment: false
  )
puts "Lecture marseillaise1 created"
#
# ==================== BELAMI LECTURES ====================
#
belami0 = Lecture.create!(
  course: belami,
  title:"Résumé analyse illustré",
  video:"goBK2RvI2TQ",
  description:"Bel-Ami, c'est l'histoire de Georges Duroy, ancien sous-officier des colonies française, qui va gravir les échelons de la société parisienne. D'abord journaliste à La Vie Française, il va devenir un des personnages les plus influents de Paris. Comment va-t-il s'y prendre ? Il n'a aucun talent particulier... Mais il a beaucoup de charme, et aucun scrupule. C'est donc par les femmes qu'il réussira. Ce magnifique roman de Maupassant, à la fois plein de légèreté et de cynisme, est un chef-d'oeuvre du réalisme littéraire.",
  payment: false
  )
puts "Lecture belami0 created"
#
belami1 = Lecture.create!(
  course: belami,
  title:"Résumé analyse",
  video:"efOb9s1-rhM",
  description:"Vous allez voir que dans notre incipit, tout est déjà mis en place : Maupassant nous fait de belles promesses. Avec une écriture légère, il nous laisse deviner son projet romanesque. Le personnage de Georges Duroy est haut en couleur, séducteur et ambitieux. Le regard acerbe du romancier semble déjà sur le point de nous révéler les dessous scabreux de la société parisienne. Comment Maupassant annonce-t-il dans cet incipit un projet romanesque réaliste, marqué par une vision personnelle du monde ?",
  payment: false
  )
puts "Lecture belami1 created"
#
belami2 = Lecture.create!(
  course: belami,
  title:"Partie 1 chapitre 7 (le duel)",
  video:"w2iU9n3JBgA",
  description:"Dans notre passage, Georges Duroy est provoqué en duel par un journaliste inconnu. La moment du coup de feu nous est raconté du point de vue de Duroy, tourmenté par la peur. Mais le regard ironique de Maupassant est perceptible. Tout se déroule selon un protocole vide de sens. Le coup de feu échangé n’a aucune conséquence. Les deux protagonistes s’en sortent sans une égratignure. Ce duel est un étape de plus dans l’ascension sociale d’un personnage qui pourtant ne se montre pas vraiment courageux dans cette circonstance... Comment Maupassant parvient-il à nous faire passer avec ironie l’absurdité de ce duel, à travers le regard d’un personnage sans volonté, dont le regard est embrouillé par la peur ?",
  payment: false
  )
puts "Lecture belami2 created"
#
belami3 = Lecture.create!(
  course: belami,
  title:"Partie 2, chapitre 4 (la rencontre secrète avec Mme Walter",
  video:"hJ093QU4DGw",
  description:"En discutant avec sa jeune femme Madeleine, Duroy réalise que Madame Walter, la femme de son directeur, a manifestement un faible pour lui. Par défi de séducteur autant que par intérêt personnel, Duroy décide de séduire Madame Walter, qui cède rapidement à ses avances en lui donnant rendez-vous à l’église de la Trinité. Dans notre passage, Duroy lui fait une déclaration pour parvenir à ses fins le plus rapidement possible. Comment Maupassant révèle-t-il avec ironie le succès assuré d’une stratégie de séduction extraordinairement cynique ?",
  payment: false
  )
puts "Lecture belami3 created"
#
belami4 = Lecture.create!(
  course: belami,
  title:"Partie 2, chapitre 10 (le mariage avec Suzanne)",
  video:"https://youtu.be/Ns6f9Ke-dlE",
  description:"Après avoir divorcé d’avec Madame Forestier, qui fut son soutien lors de ses débuts dans le journalisme, Georges Du Roy épouse Suzanne Walter, la fille du directeur de La Vie française, où il travaille. Le mariage a lieu en grande pompe dans l’église de la madeleine à Paris, une grande foule est venue pour y assister. Cet événement n’est une étape supplémentaire dans l’ascension sociale du personnage principal. Grisé par son triomphe, possédant désormais la fortune, et un nom célèbre, il envisage de se lancer dans une carrière politique. Comment cette fin de roman met-elle à jour les mécanismes profond du roman, à travers le récit cynique d’un mariage éclipsé par le triomphe du personnage principal, dont l’ascension sociale semble devoir se poursuivre encore.",
  payment: false
  )
puts "Lecture belami4 created"
#
# ==================== TARTUFFE LECTURES ====================
#
tartuffe0 = Lecture.create!(
  course: tartuffe,
  title:"Résumé analyse illustré",
  video:"_QaJabZwuHI",
  description:"Dans la préface de Tartuffe, Molière explique et défend son projet : il veut utiliser la comédie pour dénoncer l'hypocrisie et les faux dévots : « Si l’emploi de la comédie est de corriger les vices des hommes je ne vois pas par quelle raison il y en aura de privilégiés. Celui-ci est, dans l’État, d’une conséquence bien plus dangereuse que tous les autres [...] » Dès le lendemain de sa première représentation publique, une cabale est formée, et la pièce, Tartuffe est interdite par l'archevêque de Paris, Hardouin de Péréfixe. En effet n'était pas rien de jeter le soupçon sur des personnes très respectées et proches du roi. ",
  payment: false
  )
puts "Lecture tartuffe0 created"
#
tartuffe1 = Lecture.create!(
  course: tartuffe,
  title:"Acte I, scène 1 (La colère de Pernelle)",
  video:"b_OhxjlhKxg",
  description:"Tartuffe est absent de la première scène de la pièce, mais on perçoit déjà les effets de son hypocrisie à  travers le chaos qui règne sur scène : Pernelle, furieuse, est suivie par 6 personnages qui tentent de comprendre les raisons de sa colère. Ce n’est que lorsque le nom de Tartuffe est prononcé que tout devient clair : Pernelle le considère comme un homme de bien, et refuse d'entendre les autres, qui l'accusent d'hypocrisie. Le spectateur, qui assiste à la dispute, est amené à se faire sa propre opinion. Tout le travail de Molière consiste alors à décrédibiliser Pernelle pour dénoncer Tartuffe avant même qu’il n’arrive. Comment Molière utilise-t-il le personnage de Pernelle pour préparer le spectateur à l'hypocrisie de Tartuffe, dès la scène d'exposition ?",
  payment: false
  )
puts "Lecture tartuffe1 created"
#
tartuffe2 = Lecture.create!(
  course: tartuffe,
  title:"Acte I, scène 4 (le pauvre homme!)",
  video:"GposD4Srv-8",
  description:"Dans notre scène, c'est Orgon qui est la première cible du ridicule. Absent jusque-là, il apparaît pour la première fois sur scène, demandant à Dorine des nouvelles de sa famille. C'est l'occasion pour le spectateur de découvrir les principaux traits de sa personnalité. Mécanique, monomaniaque, il ne répète que deux répliques en boucle, demandant des nouvelles de Tartuffe sans écouter les réponses de Dorine. À travers le discours de la suivante, c'est Tartuffe qui est la deuxième cible du ridicule. Avec ironie, elle nous montre un personnage égoïste, voire même, dangereux pour la communauté. Comment Molière utilise-t-il ce dialogue avec Dorine pour montrer l'emprise de Tartuffe sur Orgon, et ainsi dénoncer le danger que l'hypocrisie représente pour la société ?",
  payment: false
  )
puts "Lecture tartuffe2 created"
#
tartuffe3 = Lecture.create!(
  course: tartuffe,
  title:"Acte III, scène 3 (la déclaration de Tartuffe à Elmire)",
  video:"XF0FZhdSXcs",
  description:"Dans notre passage, Tartuffe révèle l'ampleur de sa perfidie, en faisant une déclaration d'amour à Elmire, la femme de son hôte, Orgon. Il va devoir se montrer particulièrement habile pour être séduisant, sans quitter son rôle de dévot. Nous allons voir en action tout son talent d'hypocrite et de manipulateur.  Il faut savoir également que pendant toute cette scène, Damis est caché dans un cabinet, et entend toutes les révélations de Tartuffe. Il représente en quelque sorte le spectateur sur scène. Certes, Molière nous peint un méchant homme, mais ce qui a choqué, c'est peut-être le fait qu'il ne soit pas si ridicule que ça, car cette déclaration est loin d'être drôle ou caricaturale, au contraire, elle révèle un grand art de la manipulation. Comment cette déclaration d'amour, galante et habile par certains côtés, révèlent les actions d'un méchant homme ?",
  payment: false
  )
puts "Lecture tartuffe3 created"
#
tartuffe4 = Lecture.create!(
  course: tartuffe,
  title:"Acte III, scène 6 (Tartuffe démasqué par Damis)",
  video:"7g7mdhWb1-4",
  description:"Dans les scènes précédentes, Tartuffe a fait une déclaration d'amour à Elmire, la femme de son hôte, Orgon. Damis, le fils d'Orgon, a entendu toute la scène depuis un petit cabinet où il était caché. Révolté, malgré Elmire qui le supplie de ne pas faire d'esclandre, il va voir Orgon pour tout lui révéler. Toutes les conditions sont réunies pour perdre Tartuffe, Damis le  fils d'Orgon est témoin d'une faute impardonnable. Et pourtant Tartuffe va trouver une pirouette qui lui permettra de s'en tirer en gardant toute la confiance d'Orgon. Mieux, il parviendra à faire déshériter Damis à son profit ! Arrivé à ce moment de la pièce, le spectateur se demande comment Tartuffe pourra s'en tirer. Toute l'habileté de Molière consiste à mettre son personnage dans une situation impossible, pour mieux démontrer l'habileté de manipulation des hypocrites, qui s'en tirent avec des stratégies particulièrement adroites. Comment Molière parvient-il à dénoncer les pièges de l'hypocrisie des faux dévots, en montrant les stratégies de Tartuffe, capable de se sortir des situations les plus périlleuses ?",
  payment: false
  )
puts "Lecture tartuffe4 created"
#
tartuffe5 = Lecture.create!(
  course: tartuffe,
  title:"Acte IV, scène 5 (le stratagème d'Elmire)",
  video:"CpsLihJ0j18",
  description:"Dans notre scène, Orgon est tellement aveuglé par Tartuffe, qu'Elmire est obligée de mettre en place un stratagème pour dénoncer l'hypocrite. Elle le fait donc venir, et fait semblant de se rendre à ses avances, tandis que son mari est caché sous une table. C'est un moment clé de basculement, où Tartuffe laisse tomber son masque, cette fois-ci en présence du maître de la maison qui ouvre enfin les yeux. Comment le stratagème d'Elmire permet-il de disqualifier définitivement Tartuffe aux yeux d'Orgon ?",
  payment: false
  )
puts "Lecture tartuffe5 created"
#
tartuffe6 = Lecture.create!(
  course: tartuffe,
  title:"Acte III, scène 2 (Cachez ce sein que je ne saurais voir)",
  video:"dOjLbr02CJk",
  description:"Dans notre passage, Tartuffe apparaît pour la première fois : après deux actes entiers où le spectateur entend constamment parler de lui. Son premier échange avec Dorine représente bien le personnage, faux dévot, manipulateur, son hypocrisie apparaît tout de suite aux yeux du spectateur. Comment Molière met-il en scène de façon comique cette première apparition de Tartuffe pour dénoncer l'hypocrisie, qu'il estime dangereuse pour la société ?",
  payment: false
  )
puts "Lecture tartuffe6 created"
#
# ==================== ANDROMAQUE LECTURES ====================
#
andromaque0 = Lecture.create!(
  course: andromaque,
  title:"Résumé analyse illustré",
  video:"f1zvstOtMUg",
  description:"Pyrrhus, le fils d'Achille, participe au sac de Troie. C'est lui qui tue le roi Priam (le père de Pâris). La ville de Troie est mise à feu et à sang. Il n'en reste que des ruines. Andromaque et Astyanax sont faits prisonniers par Pyrrhus qui les emmène dans son royaume d'Épire. C'est maintenant que commence notre tragédie.",
  payment: false
  )
puts "Lecture andromaque0 created"
#
andromaque1 = Lecture.create!(
  course: andromaque,
  title:"Acte I, scène 4 (le chantage de Pyrrhus)",
  video:"-Yl2-3MV6Dc",
  description:"Dans notre passage, Pyrrhus essaie de faire fléchir Andromaque. Mais c'est impossible : la passion contrariée de Pyrrhus se transforme alors en haine. Le chantage qui en découle noue l'intrigue de la pièce. Andromaque se trouve piégée : soit elle épouse Pyrrhus, soit elle voit son fils Astyanax livré aux mains de ses ennemis. Comment le basculement de Pyrrhus de l'amour à la haine révèle-t-il une situation bloquée par des passions implacables et un passé sanglant, ne pouvant se dénouer que d'une manière tragique ?",
  payment: false
  )
puts "Lecture andromaque1 created"
#
andromaque2 = Lecture.create!(
  course: andromaque,
  title:"Acte III, scène 8 (le souvenir d'Hector)",
  video:"G_LoHwanVnM",
  description:"Les grecs réclament à Pyrrhus la mort d'Astyanax car ils craignent que l'enfant refonde un jour la ville de Troie. Mais Pyrrhus est tombé amoureux d'Andromaque. Au début de notre pièce, il lui a proposé un marché : si elle l'épouse, il trahira les grecs et sauvera Astyanax. Dans notre passage, Andromaque s'entretient avec Céphise, sa confidente, pour savoir ce qu'elle doit faire. Comment ce dialogue met-il en scène l'évolution d'Andromaque, lui permettant de prendre la seule décision possible pour sauver à la fois son fils et son honneur ?",
  payment: false
  )
puts "Lecture andromaque2 created"
#
andromaque3 = Lecture.create!(
  course: andromaque,
  title:"Acte IV scène 5 (la jalousie d'Hermione)",
  video:"cFuY-Xcs31c",
  description:"Hermione, la fille du roi grec Ménélas est promise à Pyrrhus, la fils du Héros grec Achille. Elle est en plus passionnément amoureuse de lui. Mais Pyrrhus est tombé amoureux de sa captive, la troyenne Andromaque. Au début de la scène, Pyrrhus est venu annoncer à Hermione qu'il rompait ses engagements. Hermione abandonnée, réalise pas tout de suite, mais progressivement qu'il ne lui reste aucun espoir. Alors, le spectateur réalise avec terreur et pitié qu'Hermione envisage son suicide et le meurtre de celui qu'elle aime, le punissant ainsi de son indifférence. Pyrrhus, lui, aveuglé par sa passion, pense à Andromaque et ne voit rien venir. Comment Racine nous montre-t-il Hermione perdre ses derniers espoirs, prenant alors les décisions terribles qui vont réaliser le destin tragique des personnages ?",
  payment: false
  )
puts "Lecture andromaque3 created"
#
andromaque4 = Lecture.create!(
  course: andromaque,
  title:"Acte V, scène 5 (la folie d'Oreste)",
  video:"LmkQlWXNYXA",
  description:"Dans notre scène, Oreste vient d'apprendre le suicide d'Hermione. Incapable de soutenir la douleur de perdre l'objet de toutes ses passions, il sombre dans la folie. Cette punition lui confère un statut particulier parmi les Héros tragiques. Comment cette fin de tragédie met-elle en scène la folie d'Oreste, comme une conséquence fatale de son aveuglement ?",
  payment: false
  )
puts "Lecture andromaque4 created"
#
# ==================== PHEDRE LECTURES ====================
#
phedre0 = Lecture.create!(
  course: phedre,
  title:"Résumé analyse illustré",
  video:"nL-1Xbi9Djw",
  description:"Phèdre est poursuivie par la vengeance de Vénus ! Pourquoi ? Parce que le grand-père de Phèdre, Hélios le dieu du soleil, a surpris Vénus en plein adultère avec Mars le dieu de la guerre... la déesse de l'amour maudit alors la descendance d'Hélios ! Au début de la tragédie, inspire à Phèdre un désir contre-nature pour son beau-fils Hippolyte. La tragédie de Racine obétit parfaitement aux règles du théâtre classique, dans une intrigue simple et fatale, qui inspire à la fois la terreur et la pitié...",
  payment: false
  )
puts "Lecture phedre0 created"
#
phedre1 = Lecture.create!(
  course: phedre,
  title:"Acte I, scène 3 (L'aveux à Oenone)",
  video:"E0DPDZgjEV4",
  description:"C’est la tirade très très célèbre où Phèdre révèle à sa nourrice Oenone, (mais au spectateur aussi en passant) qu’elle est amoureuse d’Hippolyte, son beau-fils ! Dans sa tirade, Phèdre considère elle-même son amour comme un crime, mais elle plaide en montrant combien elle lutte contre la fatalité. Mais tous ses efforts sont vains c’est pourquoi elle songe au suicide (ambiance) ! Comment Racine construit-il cette révélation de Phèdre à sa nourrice pour inspirer à la fois la terreur et la pitié, pour montrer que son personnage est à la fois coupable et victime ?",
  payment: false
  )
puts "Lecture phedre1 created"
#
phedre2 = Lecture.create!(
  course: phedre,
  title:"Acte II, scène 5 (l'aveu à Hippolyte)",
  video:"ZWLRWX1bhaY",
  description:"Phèdre est l’épouse de Thésée, mais Vénus, la déesse de l’amour, lui inspire une passion dévorante pour Hippolyte, qui est le fils de Thésée d’un premier mariage. Symboliquement, c’est un inceste que Phèdre ne peut assumer. Ce sentiment la ronge intérieurement jour après jour. Dans la scène 5 de l’acte II, tout bascule : alors que tout le monde croit Thésée mort, Phèdre révèle son amour à Hippolyte. Le secret tombé, on apprend que Thésée est toujours vivant. Le piège s’est refermé sur Phèdre. Comment Phèdre est-elle amenée à révéler malgré elle cette passion secrète qui va faire basculer son destin dans la tragédie ?",
  payment: false
  )
puts "Lecture phedre2 created"
#
phedre3 = Lecture.create!(
  course: phedre,
  title:"Acte IV, scène 6 (la jalousie de Phèdre)",
  video:"q8HIU9AuuPI",
  description:"Racine écrivit le rôle de Phèdre en pensant à une actrice, la Champmeslé, qui fut aussi un temps son amante. Cette pièce fut le plus grand triomphe de la Champmeslé, qui fit pleurer son auditoire à chaudes larmes. C'est une bonne accroche car vous donnez un élément culturel que le correcteur n'a vraiment pas l'habitude de lire : vous allez ainsi vous démarquer positivement. Toute la pièce de Phèdre raconte en effet l'évolution du personnage vers sa fin tragique, suscitant chez le spectateur à la fois la terreur et la pitié. Dans notre passage, Phèdre découvre qu'Hippolyte est amoureux d'une jeune princesse, Aricie : nous assistons alors à la naissance de la jalousie de Phèdre. Comment Racine met-il en scène la souffrance et la jalousie de Phèdre pour amener aux yeux du spectateur le dénouement tragique de la pièce ?",
  payment: false
  )
puts "Lecture phedre3 created"
#
phedre4 = Lecture.create!(
  course: phedre,
  title:"Acte V, scène 7 (le dénouement)",
  video:"eaoVchZxOVU",
  description:"À la fin de la pièce, Thésée a maudit son fils, Hippolyte, qui a été faussement accusé d’avoir fait des avances à Phèdre. Hippolyte est mort suite aux malédictions de son père. Phèdre avoue alors que c’est elle la coupable, avant de succomber aux effets du poison qu’elle a absorbé. Thésée, horrifié, représente sur scène le regard du spectateur. Le mélange de ces émotions de terreur et de pitié est perceptible dans les différentes mises en scène. Racine écrivit le rôle de Phèdre en pensant à une actrice, la Champmeslé, qui fut aussi un temps son amante. Cette pièce fut le plus grand triomphe de la Champmeslé, qui fit pleurer son auditoire à chaudes larmes. Nous sommes plutôt du côté de la pitié. Dans les mises en scènes plus modernes, les acteurs accentuent l’expression de la terreur, par la violence de leurs gestes et la dureté de leur élocution. Dans la célèbre mise en scène de Patrice Chéreau, le cadavre d’Hippolyte est carrément représenté sur scène, au premier plan. Comment cette dernière scène permet-elle à Racine de réaliser le destin de chacun de ses personnages, dans un dénouement qui suscite à la fois la terreur et la pitié ?",
  payment: false
  )
puts "Lecture phedre4 created"
#
# ==================== DOUAI LECTURES ====================
#
douai1 = Lecture.create!(
  course: douai,
  title:"Résumé analyse",
  video:"4VxVD4B2Gnk",
  description:"Lisez le poème avant de commencer, car ce serait dommage d'en spoiler la chute :) Dans ce poème, Rimbaud décrit un paysage magnifique, au milieu duquel se repose un soldat. La scène est calme, et pourtant tout au long du poème, on dirait qu’il y a quelque chose qui cloche, on a une sensation de malaise, difficile à saisir. Dans le tout dernier vers, le lecteur découvre qu’en fait le soldat est mort. On n’a plus qu’à relire tout le poème pour bien comprendre comment le pressentiment de cette mort était construit, en fait, depuis le début.",
  payment: false
  )
puts "Lecture douai1 created"
#
# ==================== CANDIDE LECTURES ====================
#
candide0 = Lecture.create!(
  course: candide,
  title:"Résumé analyse illustré",
  video:"988K0bxJyx8",
  description:"Candide, enfant bâtard du baron de Thunder-ten-tronck, est chassé du château de son enfance. Il va découvrir le monde, et réaliser qu'il ne tourne peut être pas aussi bien que le prétend son professeur Pangloss ! Comment comprendre la guerre, les catastrophes naturelles, l'inquisition, l'esclavage ? Avec ce conte philosophique, Voltaire remet en cause l'optimisme de Leibniz, selon lequel Dieu organise le monde le mieux possible. À travers ces aventures, Voltaire amène son personnage Candide et son lecteur à trouver par eux-mêmes les valeurs importantes qui fondent la sagesse.",
  payment: false
  )
puts "Lecture candide0 created"
#
candide1 = Lecture.create!(
  course: candide,
  title:"Chapitre I - Comment Candide fut élevé dans un beau château, et comment il fut chassé d’icelui",
  video:"_h-fP2nt9fM",
  description:"Nous sommes en Vestphalie dans le château du baron de Thunder-ten-tronckh. C'est là que vit Candide, un garçon qui a le jugement droit et l'esprit le plus simple, il n'est qu'un bâtard de la soeur du baron. Le baron est très imbu de sa personne et de sa noblesse. La baronne s'attire la considération de tous par son poids. Le fils du baron est en tout digne de son père. Cunégonde, âgée de 17 ans, plaît beaucoup au jeune Candide. Voltaire se moque de l'orgueil de cette noblesse, qui est en fait très pauvre ! Pangloss est le maître à penser du château, ridicule et pédant, il enseigne la métaphysico-théologo-cosmolo-nigo- logie… Voltaire va utiliser ce personnage pour démonter la philosophie optimiste de Leibniz.",
  payment: false
  )
puts "Lecture candide1 created"
#
candide2 = Lecture.create!(
  course: candide,
  title:"Chapitre 2 (parmi les bulgares)",
  video:"N8SgGDacWMk",
  description:"Dans ce deuxième chapitre, Candide a été chassé du château et se retrouve confronté à la dure réalité. Il manque de mourir d’épuisement, et il va rencontrer deux soldats qui vont l’enrôler de force dans l’armée du roi des Bulgares. C’est l’occasion pour Voltaire de montrer les différentes méthodes de manipulations utilisées dans le système militaire. Je propose une problématique qui nous permettra de comprendre toutes les motivations de ce passage. Comment Voltaire met en scène cette première mésaventure de Candide, pour nous faire prendre conscience que le monde réel est dangereux si l’on ne sait pas faire preuve d’esprit critique.
",
  payment: false
  )
puts "Lecture candide2 created"
#
candide3 = Lecture.create!(
  course: candide,
  title:"Chapitre 3 (Candide se sauve d'entre les Bulgares)",
  video:"89o9AtX08jg",
  description:"Après avoir été enrôlé de force dans l’armée Bulgare, Candide est envoyé au milieu d’un champ de bataille, et va rencontrer les horreurs de la guerre. Voltaire nous montre ainsi une réalité face à laquelle la philosophie optimiste ne résiste pas : elle se retrouve dans ce qu’on appelle une aporie, c’est à dire qu’elle n’a pas de réponse. Je propose une problématique pour bien saisir les enjeux de ce texte : Comment Voltaire montre-t-il que les horreurs de la guerre viennent disqualifier les conclusions de la philosophie Optimiste ?",
  payment: false
  )
puts "Lecture candide3 created"
#
candide4 = Lecture.create!(
  course: candide,
  title:"Chapitre XIX (le nègre de Surinam)",
  video:"L6A5JFVxdVA",
  description:"Dans notre passage, Candide rencontre un esclave qui lui raconte ses conditions de vie. Les horreurs de l’esclavage vont démontrer justement la responsabilité humaine et l’absurdité du mal dans le monde. En faisant preuve d’une véritable sensibilité, en exerçant son sens du jugement, Candide va remettre en cause les enseignements de son maître. Comment Voltaire dénonce-t-il l’esclavage, de manière à faire évoluer à la fois le personnage de Candide, et le lecteur, qui sont mis en capacité d’exercer leur jugement.",
  payment: false
  )
puts "Lecture candide4 created"
#
candide5 = Lecture.create!(
  course: candide,
  title:"Chapitre 6 (l'autodafé)",
  video:"v3eZT6LhE8A",
  description:"Dans le chapitre 6 de notre conte philosophique, Voltaire fait débarquer Candide et Pangloss à Lisbonne juste après le tremblement de terre. Ils sont alors arrêtés et condamnés : Candide à être fessé et Pangloss a être pendu. L'inquisition organise alors un grand autodafé, spectaculaire. Voltaire dénonce l'absurdité et l'inutilité de cette cérémonie, avec un ton faussement admiratif : ce spectacle est offert à la foule pour satisfaire des superstitions aberrantes, comme si un sacrifice humain pouvait empêcher la terre de trembler ! Comment l'ironie de Voltaire permet-elle de révéler, derrière la mise en scène de cet autodafé, l'absurdité et le danger des superstitions ?",
  payment: false
  )
puts "Lecture candide5 created"
#
candide6 = Lecture.create!(
  course: candide,
  title:"Chapitre 30 (Conclusion)",
  video:"FPD-sbAGaGM",
  description:"Au cours de ses aventures, Candide rencontre toute une galerie de personnages : le nègre de Surinam, Pococurante, 6 rois, et finalement, un vieux Turc qui  cultive sa terre avec ses enfants. Chaque rencontre est une étape dans le parcours initiatique de Candide, qui évolue et construit petit à petit sa propre philosophie de vie. Voltaire nous montre en même temps le personnage de Pangloss, qui reste figé dans les préceptes de la philosophie Optimiste. Incapable de remettre en cause le monde qui l'entoure, il n'évolue pas. Comment la fin de ce conte philosophique révèle-t-elle, à travers l'évolution profonde de Candide, des valeurs éloignées des utopies et de la philosophie optimiste ?",
  payment: false
  )
puts "Lecture candide6 created"
#
# ==================== GERMINAL LECTURES ====================
#
germinal0 = Lecture.create!(
  course: germinal,
  title:"Résumé analyse illustré",
  video:"qYLKdUWzO_I",
  description:"Étienne Lantier a quitté son travail aux chemins de fer et trouve un emploi dans la mine du Voreux. À travers son histoire, Zola nous fait découvrir les conditions de travail des mineurs, et leur cheminement de l'exploitation à la révolte. Tous les acteurs sont représentés : ouvriers, politiciens, propriétaires, actionnaires, syndicalistes, anarchistes... Dans ce tableau très sombre de la condition des travailleurs, Zola évoque cependant l'espoir que l'Humanité s'élèvera par l'instruction et la science.",
  payment: false
  )
puts "Lecture germinal0 created"
#
germinal1 = Lecture.create!(
  course: germinal,
  title:"Chapitre 1 (l'arrivée à Montsou)",
  video:"kQ849bZc0k0",
  description:"Ah qu'il est poétique ce calendrier républicain ! Les mois riment en -ôse pour l'hiver, tandis qu'en été les mois sont en -dor, et en -aire pour l'automne. Ce sont les mois en -al qui correspondent au printemps. Germinal, Floréal, Prairial ! Ainsi, le titre est porteur d'espoir, de renouveau, de germination. Mais il est aussi révolutionnaire, ce calendrier républicain ! Si la mine est complètement absente de ce titre, nous y trouvons bien les idées de révolte et de lutte sociale. Sachant cela, notre début du roman va décevoir les attentes du lecteur. Pas de révolution, non, un homme seul. Ce n'est pas le printemps, mais une nuit glaciale du mois de mars, c'est le mois de ventôse ! Nous sommes tout de suite plongés dans une atmosphère à la fois inquiétante et intrigante, et c'est le personnage principal, Étienne Lantier, qui nous entraîne jusqu'à la mine, comme le passeur Charon accompagne dans la mythologie antique les âmes des défunts jusqu'aux enfers. Comment Zola utilise-t-il en ce début de roman le point de vue de son personnage principal pour nous faire entrer dans un monde à la fois réaliste et fantastique, révélant ainsi l'originalité de son projet naturaliste ?",
  payment: false
  )
puts "Lecture germinal1 created"
#
germinal2 = Lecture.create!(
  course: germinal,
  title:"Partie1 chapitre3 (l'ascenseur vorace)",
  video:"QQBsHXHQYlU",
  description:"En 1884, Zola se rend dans le bassin minier du Nord-pas-de-Calais et assiste à la grande grève des mineurs d'Anzin. Il se renseigne auprès des travailleurs, des porions et des ingénieurs, pour en savoir le plus possibles sur les conditions de travail et le quotidien dans les mines. Mais Germinal n'est pas un simple compte-rendu de la vie des mineurs, c'est aussi un témoignage engagé et un récit dramatisé. À côté des indications précises et chiffrées, Zola développe une métaphore très riche, faite pour frapper l'imagination.  Le lecteur découvre la mine du Voreux pour la première fois à travers le regard du personnage principal, Étienne Lantier. L'atmosphère est alors teintée d'une tonalité fantastique, le Voreux, avec son ascenseur dévorant les ouvriers et ses immenses galeries souterraines, ressemble à un monstre mythologique. Comment le regard d'Étienne transforme-t-il la mine du Voreux en monstre dévorateur, permettant à Zola de dénoncer les conditions de travail inhumaines des ouvriers ?",
  payment: false
  )
puts "Lecture germinal2 created"
#
germinal4 = Lecture.create!(
  course: germinal,
  title:"Partie5, chapitre5 (la révolution)",
  video:"EhIXo-4bmdc",
  description:"Dans notre passage, Zola décrit une révolte de mineurs. 3000 hommes, femmes et enfants, déferlent dans la plaine de Montsou. La scène est effrayante, peinte du point de vue des propriétaires de la mine qui se sont réfugiés dans un hangar, et qui regardent la route à travers les fentes des planches de la porte. Cet événement particulier prend alors une dimension plus générale, symbolique. Sans prôner la révolution et la violence, Zola, en écrivain naturaliste, à la fois observateur et engagé, donne des clés de compréhension du phénomène social. Comment ce tableau frappant d'une révolte de mineurs permet-il à Zola de mobiliser son lecteur et de faire passer un message de portée plus générale ?",
  payment: false
  )
puts "Lecture germinal4 created"
#
germinal5 = Lecture.create!(
  course: germinal,
  title:"Partie7, chapitre6 (excipit)",
  video:"https://youtu.be/JkeKoN80no0",
  description:"Zola avait prévu de terminer son roman avec un paysage comparable à celui du début, un temps pluvieux, créant alors une impression de cycle et d'éternel recommencement. Dans ses cahiers préparatoire, Zola écrit : « Je montre Étienne s'en allant un soir par la pluie, comme il est arrivé un matin, par la gelée ». Mais en cours de rédaction, Zola va changer d'avis, désormais, il veut « finir par germinal » par « le silence gros d'un avenir terrible ». Germinal, le mois républicain correspondant au printemps, au renouveau de la nature. La signification globale du roman en est bouleversée. La reprise d'un même motif au début et à la fin d'une intrigue, c'est ce qu'on appelle une épanadiplose narrative. Le départ d'Étienne dans une nature en pleine renaissance indique que malgré l'échec de la grève, l'espoir n'est pas mort. De manière symbolique, Zola nous montre que cet espoir est inépuisable, il fait partie des forces profondes de la nature, il appartient au lent mouvement de l'Histoire. Émile Zola, en écrivain à la fois observateur et engagé, nous transmet ses convictions progressistes. Comment Zola met-il en scène le départ d'Étienne, de manière à révéler toute la puissance symbolique du roman ?",
  payment: false
  )
puts "Lecture germinal5 created"
#
# ==================== ASSOMMOIR LECTURES ====================
#
assommoir0 = Lecture.create!(
  course: assommoir,
  title:"Résumé analyse illustré",
  video:"2c7iBqOUcUc",
  description:"Dès la préface de l'Assommoir, Zola nous annonce son projet et donne tous les thèmes abordés. « J'ai voulu peindre la déchéance fatale d'une famille ouvrière, dans le milieu empesté de nos faubourgs. Au bout de l'ivrognerie et de la fainéantise, il y a le relâchement des liens de la famille, les ordures de la promiscuité, l'oubli progressif des sentiments honnêtes, puis comme dénouement la honte et la mort. C'est de la morale en action, tout simplement. » Le mot fatalité est très important. Nous savons dès le début que cette histoire va mal se terminer, et Zola utilise, tout au long du roman, l'ironie tragique, des allusions à la fin du roman. Dans la tragédie Grecque, les personnages sont écrasés par les Dieux. Vous allez voir que chez Zola, les personnages sont écrasés par le milieu et par  l'hérédité.",
  payment: false
  )
puts "Lecture assommoir0 created"
#
assommoir1 = Lecture.create!(
  course: assommoir,
  title:"Chapitre I (le départ de Lantier)",
  video:"bvaUDohrODc",
  description:"Au début du roman, Zola nous présente Gervaise dans une situation de crise : Lantier n’est pas rentré de la nuit, elle le soupçonne d’être infidèle. Le personnage de Gervaise est donc l'occasion pour l'écrivain de mener une expérimentation, comme une expérience scientifique : comment réagit le personnage avec le milieu dans le quel il se trouve plongé ? Mais Zola ne porte pas un regard froid et extérieur sur la misère du personnage, il nous la faire vivre à travers son regard. Le lecteur est ainsi amené à entrer dans la subjectivité de Gervaise, il sera empathique avec elle. Mais cela va plus loin encore, car le style de l’écriture sera lui-même contaminé par le point de vue de Gervaise. Les descriptions de ce début de roman ne servent pas uniquement à planter le décor, elles ont une dimension symbolique très forte. Comment Zola nous fait-il plonger dans un milieu social misérable, à travers le regard subjectif d'un personnage en crise, qui va donner au passage toute sa dimension émotive et symbolique ?",
  payment: false
  )
puts "Lecture assommoir1 created"
#
assommoir2 = Lecture.create!(
  course: assommoir,
  title:"Chapitre 2 (l'alambic)",
  video:"AzfK4l0PNDY",
  description:"Dans ce roman, Zola observe le milieu ouvrier parisien, en suivant la vie de Gervaise : originaire de Plassans, elle est montée à Paris avec son amant Auguste Lantier. Au début du roman, Zola nous présente Gervaise dans une situation de crise : Lantier n’est pas rentré de la nuit, elle le soupçonne d’être infidèle. Le personnage de Gervaise est donc l'occasion pour l'écrivain de mener une expérimentation, comme une expérience scientifique : comment réagit le personnage avec le milieu dans le quel il se trouve plongé ? Mais Zola ne porte pas un regard froid et extérieur sur la misère du personnage, il nous la faire vivre à travers son regard. Le lecteur est ainsi amené à entrer dans la subjectivité de Gervaise, il sera empathique avec elle. Mais cela va plus loin encore, car le style de l’écriture sera lui-même contaminé par le point de vue de Gervaise. Les descriptions de ce début de roman ne servent pas uniquement à planter le décor, elles ont une dimension symbolique très forte. Comment Zola nous fait-il plonger dans un milieu social misérable, à travers le regard subjectif d'un personnage en crise, qui va donner au passage toute sa dimension émotive et symbolique ?",
  payment: false
  )
puts "Lecture assommoir2 created"
#
assommoir3 = Lecture.create!(
  course: assommoir,
  title:"Chapitre 7 (le dîner de Gervaise)",
  video:"rEeUKgFL8Zk",
  description:"Nous sommes dans le chapitre 7 : c'est le chapitre pivot, et souvent, on a tendance à dessiner le schéma du roman en faisant du chapitre 7 le sommet de la pyramide. C'est en effet le moment d'apogée de la réussite de Gervaise, mais aussi le début de sa descente aux enfers. Pourtant, de nombreux signes avant-coureurs préparent ce basculement. Le mariage avec Coupeau, bâclé, déjà placé sous le signe de l'alcool, la chute de Coupeau au chapitre 4, qui l'installe dans l'alcoolisme et la fainéantise, l'arrivée de Virginie au chapitre 6, prépare le retour de Lantier, qui signe véritablement le renversement de la situation, à la fin du dîner. Comment ce dîner qui marque l'apogée de la réussite de Gervaise illustre-t-il déjà les dérives inévitables qui provoqueront sa déchéance finale ?",
  payment: false
  )
puts "Lecture assommoir3 created"
#
assommoir4 = Lecture.create!(
  course: assommoir,
  title:"Chapitre 10 (la misère)",
  video:"4ARgt9f7RaA",
  description:"Notre passage illustre particulièrement bien le milieu empesté des faubourg, nettoyé par deux hivers particulièrement rudes, et par la misère. Les habitants sont à l'image de l'immeuble qu'ils habitent, les chambres sont vides, les ventres sont vides. Les habitants crient leur faim, l'immeuble ressemble à un monstre affamé qui engloutit ses victimes. Au milieu de cela, Gervaise poursuit sa déchéance, et prend en pitié le père Bru, un vieil homme qui précède la jeune femme dans la niche sous l'escalier et dans la mort. Ce passage montre en raccourci le cheminement de tout ce petit monde de la misère à la mort, en passant par la famine. Comment cette peinture de la famine permet-elle à Zola de préparer le destin de Gervaise tout en dénonçant les structures sociales responsables de la misère et de l'exclusion ?",
  payment: false
  )
puts "Lecture assommoir4 created"
#
assommoir5 = Lecture.create!(
  course: assommoir,
  title:"Chapitre 13 (la fin)",
  video:"2Q0noGQVtyQ",
  description:"En cette fin de roman, Gervaise est emportée dans l'indifférence générale, sans une larme, sans cérémonie.  Le dernier mot revient au père Bazouge, le croque-mort, désinvolte, ayant déjà bu assez d'alcool pour supporter son travail quotidien. Cette dernière page du livre est d'une froideur déroutante, choquante pour le lecteur qui s'attendrait à un éloge funèbre, un discours pathétique. Mais c'est peut-être justement par ce refus du pathos que Zola réveille la conscience de ses lecteurs. Comment la mort de Gervaise, mise en scène avec ironie et froideur, permet à Zola de révéler la dimension morale de ce roman naturaliste ?",
  payment: false
  )
puts "Lecture assommoir5 created"
#
# ==================== OLD LECTURES ====================
#
fables1 = Lecture.create!(
  course: fables,
  title:"Le Loup et le Chien",
  video:"0XDOYGSXwEI",
  description:"Dans Le Loup et le Chien, La Fontaine raconte la rencontre de deux personnages que tout oppose, ils répondent bien à des stéréotypes : le chien est fidèle à son maître, le loup est épris de liberté et toujours en quête de nourriture. La fable est un petit récit qui va confronter les points de vue des deux personnages. Malgré l’argumentation du Chien, c’est la trace du collier sur son cou qui va faire basculer la fable, et revaloriser le point de vue du Loup. Comment La Fontaine met-il en scène la rencontre de deux personnages tout à fait opposés, pour illustrer une réflexion plus large sur la valeur de la liberté ?",
  payment: false
  )
puts "Lecture fables1 created"
#
ile1 = Lecture.create!(
  course: ile,
  title:"Acte I, scène 1 (l'arrivée sur l'île)",
  video:"TxnS7J8s854",
  description:"Notre texte est un extrait de la scène d’exposition, où Iphicrate révèle à Arlequin où ils se trouvent. Comprenant cela, Arlequin en profite pour reprendre sa liberté. Le spectateur assiste au basculement qui fonde toute l’intrigue. Le maître perd son autorité malgré lui, et l’esclave réalise son indépendance. Dans cette scène, le rire est au service d’une réflexion profonde : le ton badin d’Arlequin devient à la fin un ton sérieux. Comment Marivaux met-il en place l’inversion des rôles qui lui permettra de composer une pièce où le comique de situation et les jeux de langage sont au service d’une réflexion philosophique sur les fondements de la société ?",
  payment: false
  )
puts "Lecture ile1 created"
#
domjuan1 = Lecture.create!(
  course: domjuan,
  title:"Acte I, scène 1 (incipit)",
  video:"AroX7KRxlGw",
  description:"Dans la toute première scène de notre pièce, Dom Juan est absent, c’est Sganarelle qui occupe le devant de la scène. Il fait l’éloge du tabac avant de s’adresser à Gusman, le valet de Done Elvire. C’est donc une scène d’exposition décalée, retardée par un monologue qui nous fait comprendre la personnalité de Sganarelle. C’est aussi le dialogue entre deux valets, qui représentent chacun les intérêts de leur maître. C’est donc une scène qui annonce la confrontation de Dom Juan et Done Elvire. On entre dans le théâtre par une sorte de répétition théâtrale des valets, qui présente à la fois les informations attendues par le spectateur et la dimension comique de la pièce.",
  payment: false
  )
puts "Lecture domjuan1 created"
#
lettres1 = Lecture.create!(
  course: lettres,
  title:"Lettre XXIV",
  video:"sj9Ofxj33Fk",
  description:"Dans cet extrait, Rica raconte son arrivée à Paris et donne ses premières impressions à son ami Ibben. Il met en scène son regard sur la société qu’il découvre. Sa curiosité fait ressortir l’étrangeté des moeurs des parisiens. Petit à petit, les sujets deviennent plus sérieux. On perçoit sous la plume de Rica le regard de Montesquieu qui fait une critique sociale acerbe. Comment Montesquieu parvient-il à faire passer des critiques très vives à l’égard de la société française, par la mise en scène d’un regard extérieur et naïf ?",
  payment: false
  )
puts "Lecture lettres1 created"
#
suif1 = Lecture.create!(
  course: suif,
  title:"Incipit de la nouvelle",
  video:"ZP1umwpKa18",
  description:"La nouvelle Boule de Suif se situe dans ce contexte. Un groupe de voyageurs fuit la ville de Rouen occupée par les Prussiens. Ensemble, ils représentent toutes les classes sociales : clergé, petit commerce, grande bourgeoisie, noblesse. Parmi ces personnages, Élisabeth Rousset, appelée Boule de suif en raison de son apparence physique, est méprisée par tous, car elle est une prostituée bien connue dans la petite ville. Elle sera forcée par ses compagnons de voyages à céder aux avances d’un officier prussien pour assurer leur fuite. La nouvelle se concentre sur l’ingratitude et l’égoïsme des personnages « bien-pensants », qui méprisent jusqu’au bout la jeune femme qui se sacrifie pour eux.",
  payment: false
  )
puts "Lecture suif1 created"
#
horla1 = Lecture.create!(
  course: horla,
  title:"Le 12 mai",
  video:"U4hZF8jtZ88",
  description:"Notre passage n’est pas le tout début de la nouvelle, mais il intervient juste après le premier jour. Les éléments qui vont faire basculer le récit sont mis en place, le lecteur est préparé aux thématiques qui vont venir : l’invisible, l’impalpable, le mystère. La démarche scientifique, qui part du monde sensible pour comprendre les phénomènes, va être progressivement mise en échec. Maupassant emmène le lecteur dans un monde où les repères sont brouillés. Ce premier passage va déstabiliser le lecteur pour mieux l’entraîner dans l’angoisse du narrateur. Comment Maupassant prépare-t-il le lecteur à suivre le personnage principal narrateur dans son expérience inquiétante : la rencontre avec quelque chose qui défie les sens et l’explication rationnelle ?",
  payment: false
  )
puts "Lecture horla1 created"
#
jacques1 = Lecture.create!(
  course: jacques,
  title:"Incipit",
  video:"1BzM8BWmPDM",
  description:"Dans ce début du roman, Diderot fait se croiser deux conversations. Le narrateur s’adresse directement au lecteur, et lui rapporte une conversation entre deux personnages, Jacques et son maître. Ce narrateur espiègle s’amuse à ne pas donner au lecteur les informations qu’il s’attend habituellement à trouver dans un incipit, un début de roman. Le sujet philosophique du fatalisme, qui est présent dès le titre et les premières paroles de Jacques, va servir de prétexte pour jouer avec le destin des personnages. Cela va nous amener à réfléchir à la liberté de l’écrivain, de ses personnages, mais aussi à celle du lecteur. Contrairement à Voltaire qui dénonce la philosophie optimiste dans Candide, ici Diderot utilise la philosophie de façon ludique, comme un sujet de causerie, et comme un prétexte pour raconter des histoires. Comment Diderot utilise-t-il le thème du fatalisme dans deux conversations, l’une entre Jacques et son maître, l’autre entre le narrateur et le lecteur, pour détourner les codes du roman ?",
  payment: false
  )
puts "Lecture jacques1 created"
#
gargantua1 = Lecture.create!(
  course: gargantua,
  title:"Prologue",
  video:"ZaL1p6k8_bI",
  description:"Dans le prologue, Rabelais s’adresse directement à ses lecteurs, qui sont aussi ses disciples, et il leur explique qu’il ne faut pas s’arrêter aux apparences, et qu’il faut chercher un sens plus profond à ces aventures joyeuses. En bon pédagogue, il va intéresser ses élèves, en utilisant des métaphores variées, des images marquantes, des exemples dans lesquels ils pourront se reconnaître. Au lieu d’être didactique et ennuyeux, il prend la posture d’un bon vivant, aimant la bonne chère autant que les bons mots. Comment Rabelais, dans ce prologue, parvient à faire comprendre à son lecteur, avec humour, que son ouvrage contient des messages profonds, d’une grande valeur ?",
  payment: false
  )
puts "Lecture gargantua1 created"
#
dernierjour1 = Lecture.create!(
  course: dernierjour,
  title:"Préface",
  video:"gwpwe1FPXlQ",
  description:"Dans la préface, Victor Hugo met en place un dialogue avec les partisans de la peine de mort, et il va démonter leurs arguments un par un. C’est avec une démonstration rationnelle qu’il va essayer de convaincre son lecteur. Cependant, la puissance de ses exemples et de ses métaphores vont aussi jouer sur sa fibre émotionnelle. Nous avons en même temps deux postures de l’argumentation : convaincre et persuader. Comment Victor Hugo parvient-il dans cette préface à démonter les arguments de ses opposants, dans un dialogue qui joue à la fois sur la raison et sur l’émotion, les concepts philosophiques et les images impressionnantes ?",
  payment: false
  )
puts "Lecture dernierjour1 created"
#
confessions1 = Lecture.create!(
  course: confessions,
  title:"Préambule",
  video:"ffObrZMk9QE",
  description:"Lorsqu’il commence à rédiger ses Confessions, Jean-Jacques Rousseau a conscience qu’il commence un projet novateur. Avant d’aboutir à la version que nous avons sous les yeux, il rédige un manuscrit dit de Neuchâtel, dans lequel il écrit : “il faudrait pour ce que j'ai à dire inventer un langage aussi nouveau que mon projet”. Ainsi, l’écriture de ce prologue est extrêmement travaillée, Rousseau veut faire comprendre autant qu’il veut plaire à son public. Il met en place les bases de ce qui deviendra plus tard le genre autobiographique. Il affirme aussi vouloir faire une oeuvre utile pour les philosophes. Les Confessions doivent avoir une dimension exemplaire, devenir “une pièce de comparaison pour l’étude du coeur humain”. De son expérience particulière, Rousseau veut tirer un enseignement pour les humains. Mais le discours de Rousseau n’est pas un discours philosophique, rationnel et logique. C’est justement par le langage des émotions et par la sincérité que Rousseau compte atteindre son but. Il ne cherche pas à faire une démonstration, un raisonnement, au contraire il se donne la liberté d’exprimer ses émotions, et il assume l’aspect subjectif de son témoignage. Au concept de Vérité, Rousseau oppose celui d’authenticité. Pour réaliser cela, il doit préparer son lecteur à entendre à la fois le bien et le mal, il va lui demander de suspendre son jugement. Comment Rousseau, dans ce passage, nous présente un projet littéraire novateur, dont l’intention philosophique débouche sur un discours très personnel, invitant le lecteur dans cette même recherche de l’authenticité.",
  payment: false
  )
puts "Lecture confessions1 created"
#
# ==================== COMPOSE LECTURES ====================
#
compose0 = Lecture.create!(
  course: compose,
  title:"Méthodologie générale du commentaire composé",
  video:"44Zt5tz1tYE",
  description:"Cette méthodologie du commentaire composé fonctionne sur tous les types de textes : roman, poésie, théâtre, et même le texte argumentatif. Nous verrons ensemble des exemples pour chaque cas. La plupart des outils que je vais présenter sont connus depuis le collège, la méthodologie n'est pas complexe en soi : en fait, la difficulté viendra surtout du niveau culturel et littéraire des textes que vous allez aborder. Trois étapes : on applique d'abord 5 grilles de lecture pour faire ressortir tous les phénomènes du texte. Ensuite, quelques questions simples permettent de faire ressortir le plan. Enfin, je vous donnerai quelques conseils de rédaction.",
  payment: false
  )
puts "Lecture compose0 created"
#
compose1 = Lecture.create!(
  course: compose,
  title:"Commenter un extrait de roman",
  video:"gcmSx7YUmbg",
  description:"Dans la pension Vauquer où vit le père Goriot, on trouve un personnage haut en couleur, Vautrin, qui se cache sous cette fausse identité, car c'est un bagnard en fuite, qui s'appelle en réalité Jacques Collin, et qui est connu par le surnom : Trompe-la-Mort. Notre passage est un coup de théâtre : les policiers viennent arrêter Vautrin qui décide de se rendre sans résister.",
  payment: false
  )
puts "Lecture compose1 created"
#
compose2 = Lecture.create!(
  course: compose,
  title:"Commenter un extrait de tragédie",
  video:"q8HIU9AuuPI",
  description:"Racine écrivit le rôle de Phèdre en pensant à une actrice, la Champmeslé, qui fut aussi un temps son amante. Cette pièce fut le plus grand triomphe de la Champmeslé, qui fit pleurer son auditoire à chaudes larmes. C'est une bonne accroche car vous donnez un élément culturel que le correcteur n'a vraiment pas l'habitude de lire : vous allez ainsi vous démarquer positivement. Toute la pièce de Phèdre raconte en effet l'évolution du personnage vers sa fin tragique, suscitant chez le spectateur à la fois la terreur et la pitié. Dans notre passage, Phèdre découvre qu'Hippolyte est amoureux d'une jeune princesse, Aricie : nous assistons alors à la naissance de la jalousie de Phèdre. Comment Racine met-il en scène la souffrance et la jalousie de Phèdre pour amener aux yeux du spectateur le dénouement tragique de la pièce ?",
  payment: false
  )
puts "Lecture compose2 created"
#
compose3 = Lecture.create!(
  course: compose,
  title:"Commenter un extrait de comédie",
  video:"dOjLbr02CJk",
  description:"Dans notre passage, Tartuffe apparaît pour la première fois : après deux actes entiers où le spectateur entend constamment parler de lui. Son premier échange avec Dorine représente bien le personnage, faux dévot, manipulateur, son hypocrisie apparaît tout de suite aux yeux du spectateur. Comment Molière met-il en scène de façon comique cette première apparition de Tartuffe pour dénoncer l'hypocrisie, qu'il estime dangereuse pour la société ?",
  payment: false
  )
puts "Lecture compose3 created"
#
compose4 = Lecture.create!(
  course: compose,
  title:"Commenter un poème",
  video:"t-T_MkEwi-w",
  description:"Baudelaire emprunte le mot Spleen à l'anglais pour désigner une émotion de lassitude et de désespoir. Il renouvelle en fait le thème de la mélancolie, qui est très présent à travers l'Histoire des Arts. La Cloche fêlée est le 76e poème de la partie Spleen et Idéal dans Les Fleurs du Mal, et il précède 4 poèmes qui s'intitulent Spleen : ce sonnet prépare et annonce l'arrivée de ce sentiment terrible. La cloche Fêlée, c'est un peu le glas qui sonne la mort de l'inspiration exaltée. Comment cette allégorie de la cloche fêlée, illustrant le travail d'écriture du poète en proie au Spleen, permet-elle à Baudelaire de construire un véritable manifeste esthétique ?",
  payment: false
  )
puts "Lecture compose4 created"
#
compose5 = Lecture.create!(
  course: compose,
  title:"Commenter un extrait argumentatif",
  video:"m4a5O-1wQcg",
  description:"Zola s'inspire d'un ouvrage de Claude Bernard, « L'introduction à l'étude de la médecine expérimentale » pour écrire une série d'articles où il développe sa propre conception de la littérature naturaliste, comme une méthode d'observation et d'expérimentation sociale. Dans notre extrait, Zola compare l'activité scientifique et celle de l'écrivain naturaliste, pour mieux faire ressortir les points communs et les différences. L'écrivain observe, pose un diagnostique, mais ce n'est pas un praticien, il laisse au législateur le soin de soigner la société malade. Comment Zola défend-il, à travers une métaphore scientifique, une conception de la littérature où le romancier contribue, par sa neutralité, au progrès social ?",
  payment: false
  )
puts "Lecture compose5 created"
#
experimental1 = Lecture.create!(
  course: experimental,
  title:"Le roman expérimental",
  video:"m4a5O-1wQcg",
  description:"Zola s'inspire d'un ouvrage de Claude Bernard, « L'introduction à l'étude de la médecine expérimentale » pour écrire une série d'articles où il développe sa propre conception de la littérature naturaliste, comme une méthode d'observation et d'expérimentation sociale. Dans notre extrait, Zola compare l'activité scientifique et celle de l'écrivain naturaliste, pour mieux faire ressortir les points communs et les différences. L'écrivain observe, pose un diagnostique, mais ce n'est pas un praticien, il laisse au législateur le soin de soigner la société malade. Comment Zola défend-il, à travers une métaphore scientifique, une conception de la littérature où le romancier contribue, par sa neutralité, au progrès social ?",
  payment: false
  )
puts "Lecture experimental1 created"
#
# ==================== CORPUS LECTURES ====================
#
corpus1 = Lecture.create!(
  course: corpus,
  title:"Le personnage de roman",
  video:"uuY5wtJfmIE",
  description:"",
  payment: false
  )
puts "Lecture corpus1 created"
#
corpus2 = Lecture.create!(
  course: corpus,
  title:"Le théâtre : texte et représentation",
  video:"kT7rrvybIi8",
  description:"",
  payment: false
  )
puts "Lecture corpus2 created"
#
corpus3 = Lecture.create!(
  course: corpus,
  title:"Poésie et quête de sens",
  video:"nziBPRPAvQI",
  description:"",
  payment: false
  )
puts "Lecture corpus3 created"
#
corpus4 = Lecture.create!(
  course: corpus,
  title:"La question de l'Homme dans les genres de l'argumentation",
  video:"L1i5anUZeC0",
  description:"",
  payment: false
  )
puts "Lecture corpus4 created"
#
# ==================== THE DOCUMENTS ====================
#
Document.create!(
  title: "Andromaque de Racine, le texte intégral.",
  url:'http://www.crdp-strasbourg.fr/je_lis_libre/livres/Racine_Andromaque.pdf',
  lecture:andromaque0
)
puts "Document andromaque0-integral created"
#
Document.create!(
  title: "Les slides de la vidéo.",
  url:'https://docs.google.com/presentation/d/1OxP-wDDomN6O-mF1JfwAB5C5qJyg2ufqnwBjXL6a_6I/embed?start=false&loop=false&delayms=3000',
  lecture:andromaque0
)
puts "Document andromaque0-slides created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408619/documents/andromaque1-extrait.pdf',
  lecture:andromaque1
)
puts "Document andromaque1-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408634/documents/andromaque1-map.pdf',
  lecture:andromaque1
)
puts "Document andromaque1-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408622/documents/andromaque2-extrait.pdf',
  lecture:andromaque2
)
puts "Document andromaque2-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408641/documents/andromaque2-map.pdf',
  lecture:andromaque2
)
puts "Document andromaque2-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408617/documents/andromaque3-extrait.pdf',
  lecture:andromaque3
)
puts "Document andromaque3-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408648/documents/andromaque3-map.pdf',
  lecture:andromaque3
)
puts "Document andromaque3-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408642/documents/andromaque4-extrait.pdf',
  lecture:andromaque4
)
puts "Document andromaque4-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408651/documents/andromaque4-map.pdf',
  lecture:andromaque0
)
puts "Document andromaque4-map created"
#
Document.create!(
  title: "Texte intégral du roman",
  url:'http://aldus2006.typepad.fr/files/zola-07.pdf',
  lecture:assommoir0
)
puts "Document assommoir0-integral created"
#
Document.create!(
  title: "Résumé du roman",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408712/documents/assommoir0-summary.pdf',
  lecture: assommoir0
)
puts "Document assommoir0-summary created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408680/documents/assommoir1-extrait.pdf',
  lecture:assommoir1
)
puts "Document assommoir1-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408728/documents/assommoir1-map.pdf',
  lecture:assommoir1
)
puts "Document assommoir1-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408673/documents/assommoir2-extrait.pdf',
  lecture:assommoir2
)
puts "Document assommoir2-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408749/documents/assommoir2-map.pdf',
  lecture:assommoir2
)
puts "Document assommoir2-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408688/documents/assommoir3-extrait.pdf',
  lecture:assommoir3
)
puts "Document assommoir3-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408750/documents/assommoir3-map.pdf',
  lecture:assommoir3
)
puts "Document assommoir3-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408694/documents/assommoir4-extrait.pdf',
  lecture:assommoir4
)
puts "Document assommoir4-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408711/documents/assommoir4-map.pdf',
  lecture:assommoir4
)
puts "Document assommoir4-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408728/documents/assommoir5-extrait.pdf',
  lecture:assommoir5
)
puts "Document assommoir5-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408740/documents/assommoir5-map.pdf',
  lecture:assommoir5
)
puts "Document assommoir5-map created"
#
Document.create!(
  title: "Bel-Ami de Maupassant, le texte intégral",
  url:'http://www.ac-nice.fr/docazur/IMG/pdf/bel_ami.pdf',
  lecture:belami0
)
puts "Document belami0-integral created"
#
Document.create!(
  title: "Résumé de l'oeuvre",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408796/documents/belami0-summary.pdf',
  lecture:belami0
)
puts "Document belami0-summary created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408781/documents/belami1-extrait.pdf',
  lecture:belami1
)
puts "Document belami1-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408818/documents/belami1-map.pdf',
  lecture:belami1
)
puts "Document belami1-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408779/documents/belami2-extrait.pdf',
  lecture:belami2
)
puts "Document belami2-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408847/documents/belami2-map.pdf',
  lecture:belami2
)
puts "Document belami2-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408786/documents/belami3-extrait.pdf',
  lecture:belami3
)
puts "Document belami3-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408870/documents/belami3-map.pdf',
  lecture:belami3
)
puts "Document belami3-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408796/documents/belami4-extrait.pdf',
  lecture:belami4
)
puts "Document belami4-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408845/documents/belami4-map.pdf',
  lecture:belami4
)
puts "Document belami4-map created"
#
Document.create!(
  title: "Madame Bovary de Flaubert, texte intégral",
  url:'https://beq.ebooksgratuits.com/vents/Flaubert-Bovary.pdf',
  lecture:bovary0
)
puts "Document bovary0-integral created"
#
Document.create!(
  title: "Slides de la vidéo",
  url:'https://docs.google.com/presentation/d/1VURrax-v8hh3QB_HKT--YSQkwxDCycPm6NJFUOkh9Yk/embed?start=false&loop=false&delayms=3000',
  lecture:bovary0
)
puts "Document bovary0-slides created"
#
Document.create!(
  title: "Résumé de l'oeuvre chapitre par chapitre",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472401783/documents/bovary0-abstract.pdf',
  lecture:bovary0
)
puts "Document bovary0-summary created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408904/documents/bovary1-extrait.pdf',
  lecture:bovary1
)
puts "Document bovary1-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408995/documents/bovary2-extrait.pdf',
  lecture:bovary2
)
puts "Document bovary2-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409078/documents/bovary2-map.pdf',
  lecture:bovary2
)
puts "Document bovary2-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408899/documents/bovary3-extrait.pdf',
  lecture:bovary3
)
puts "Document bovary3-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408906/documents/bovary3-map.pdf',
  lecture:bovary3
)
puts "Document bovary3-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408907/documents/bovary4-extrait.pdf',
  lecture:bovary4
)
puts "Document bovary4-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408965/documents/bovary4-map.pdf',
  lecture:bovary4
)
puts "Document bovary4-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408988/documents/bovary5-extrait.pdf',
  lecture:bovary5
)
puts "Document bovary5-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408962/documents/bovary5-map.pdf',
  lecture:bovary5
)
puts "Document bovary5-map created"
#
Document.create!(
  title: "Texte intégral en pdf",
  url:'https://www.ebooksgratuits.com/blackmask/voltaire_candide.pdf',
  lecture:candide0
)
puts "Document candide0-integral created"
#
Document.create!(
  title: "Résumé chapitre par chapitre",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408988/documents/candide0-summary.pdf',
  lecture:candide0
)
puts "Document candide0-summary created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473408994/documents/candide1-extrait.pdf',
  lecture:candide1
)
puts "Document candide1-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409016/documents/candide1-map.pdf',
  lecture:candide1
)
puts "Document candide1-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409005/documents/candide2-extrait.pdf',
  lecture:candide2
)
puts "Document candide2-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409013/documents/candide3-extrait.pdf',
  lecture:candide3
)
puts "Document candide3-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409027/documents/candide4-extrait.pdf',
  lecture:candide4
)
puts "Document  created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409013/documents/candide5-extrait.pdf',
  lecture:candide4
)
puts "Document candide4-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409013/documents/candide5-extrait.pdf',
  lecture:candide5
)
puts "Document candide5-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409033/documents/candide5-map.pdf',
  lecture:candide5
)
puts "Document candide5-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409026/documents/candide6-extrait.pdf',
  lecture:candide6
)
puts "Document candide6-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409090/documents/candide6-map.pdf',
  lecture:candide6
)
puts "Document candide6-map created"
#
Document.create!(
  title: "Antisèche du cours",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472393487/documents/compose0-abstract.pdf',
  lecture:compose0
)
puts "Document compose0-abstract created"
#
Document.create!(
  title: "Texte de la vidéo",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472393486/documents/compose0-text.pdf',
  lecture:compose0
)
puts "Document compose0-text created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409464/documents/goriot5-extrait.pdf',
  lecture:compose1
)
puts "Document compose1-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409612/documents/phedre3-extrait.pdf',
  lecture:compose2
)
puts "Document compose2-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409698/documents/tartuffe6-extrait.pdf',
  lecture:compose3
)
puts "Document compose3-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409269/documents/fleurs7-extrait.pdf',
  lecture:compose4
)
puts "Document compose4-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409142/documents/experimental1-extrait.pdf',
  lecture:compose5
)
puts "Document compose5-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409035/documents/confessions1-extrait.pdf',
  lecture:confessions1
)
puts "Document confessions1-extrait created"
#
Document.create!(
  title: "Sujet des annales Liban, série ES / S, 2015",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409092/documents/corpus1-extracts.pdf',
  lecture:corpus1
)
puts "Document corpus1-extracts created"
#
Document.create!(
  title: "Sujet des annales de Pondichéry, séries ES / S, 2015",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409082/documents/corpus2-extracts.pdf',
  lecture:corpus2
)
puts "Document corpus2-extracts created"
#
Document.create!(
  title: "Sujet des annales des Antilles, série L, 2015",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409129/documents/corpus3-extracts.pdf',
  lecture:corpus3
)
puts "Document corpus3-extracts created"
#
Document.create!(
  title: "Sujet des annales Europe du sud-est, séries ES / S, 2015",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409061/documents/corpus4-extracts.pdf',
  lecture:corpus4
)
puts "Document corpus4-extracts created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409075/documents/dernierjour1-extrait.pdf',
  lecture:dernierjour1
)
puts "Document dernierjour1-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409113/documents/domjuan1-extrait.pdf',
  lecture:domjuan1
)
puts "Document domjuan1-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409084/documents/douai1-extrait.pdf',
  lecture:douai1
)
puts "Document douai1-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409336/documents/douai1-map.pdf',
  lecture:douai1
)
puts "Document douai1-map created"
#
Document.create!(
  title: "Slides de la vidéo",
  url:'https://docs.google.com/presentation/d/1YK7MGGRCXYVOah_GjDsRU5doWEWXu96gPFhu1MKL_i0/embed?start=false&loop=false&delayms=3000',
  lecture:etranger0
)
puts "Document etranger0-slides created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409194/documents/etranger1-extrait.pdf',
  lecture:etranger1
)
puts "Document etranger1-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409142/documents/etranger1-map.pdf',
  lecture:etranger1
)
puts "Document etranger1-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409100/documents/etranger2-extrait.pdf',
  lecture:etranger2
)
puts "Document etranger2-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409336/documents/etranger2-map.pdf',
  lecture:etranger2
)
puts "Document etranger2-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409151/documents/etranger3-extrait.pdf',
  lecture:etranger3
)
puts "Document etranger3-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409141/documents/etranger3-map.pdf',
  lecture:etranger3
)
puts "Document etranger3-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409118/documents/etranger4-extrait.pdf',
  lecture:etranger4
)
puts "Document etranger4-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409174/documents/etranger4-map.pdf',
  lecture:etranger4
)
puts "Document etranger4-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409142/documents/experimental1-extrait.pdf',
  lecture:experimental1
)
puts "Document experimental1-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409150/documents/fables1-extrait.pdf',
  lecture:fables1
)
puts "Document fables1-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409150/documents/fleurs1-extrait.pdf',
  lecture:fleurs1
)
puts "Document fleurs1-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409195/documents/fleurs1-map.pdf',
  lecture:fleurs1
)
puts "Document fleurs1-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409160/documents/fleurs2-extrait.pdf',
  lecture:fleurs2
)
puts "Document fleurs2-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409238/documents/fleurs2-map.pdf',
  lecture:fleurs2
)
puts "Document fleurs2-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409275/documents/fleurs3-extrait.pdf',
  lecture:fleurs3
)
puts "Document fleurs3-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409262/documents/fleurs3-map.pdf',
  lecture:fleurs3
)
puts "Document fleurs3-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409197/documents/fleurs4-extrait.pdf',
  lecture:fleurs4
)
puts "Document fleurs4-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409219/documents/fleurs4-map.pdf',
  lecture:fleurs4
)
puts "Document fleurs4-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409246/documents/fleurs5-extrait.pdf',
  lecture:fleurs5
)
puts "Document fleurs5-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409281/documents/fleurs5-map.pdf',
  lecture:fleurs5
)
puts "Document fleurs5-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409227/documents/fleurs6-extrait.pdf',
  lecture:fleurs6
)
puts "Document fleurs6-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409298/documents/fleurs6-map.pdf',
  lecture:fleurs6
)
puts "Document fleurs6-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409269/documents/fleurs7-extrait.pdf',
  lecture:fleurs7
)
puts "Document fleurs7-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409268/documents/gargantua1-extrait.pdf',
  lecture:gargantua1
)
puts "Document gargantua1-extrait created"
#
Document.create!(
  title: "Résumé chapitre par chapitre",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409310/documents/germinal0-summary.pdf',
  lecture:germinal0
)
puts "Document germinal0-summary created"
#
Document.create!(
  title: "Slides de la vidéo",
  url:'https://docs.google.com/presentation/d/1TJdyZTNFcnrTlYo8LvTbOirPNwgoR3E3TeMS9As2aRM/embed?start=false&loop=false&delayms=3000',
  lecture:germinal0
)
puts "Document germinal0-slides created"
#
Document.create!(
  title: "Le texte intégral",
  url:'http://www.crdp-strasbourg.fr/je_lis_libre/livres/Zola_Germinal.pdf',
  lecture:germinal0
)
puts "Document germinal0-integral created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409290/documents/germinal1-extrait.pdf',
  lecture:germinal1
)
puts "Document germinal1-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409355/documents/germinal1-map.pdf',
  lecture:germinal1
)
puts "Document germinal1-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409309/documents/germinal2-extrait.pdf',
  lecture:germinal2
)
puts "Document germinal2-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409352/documents/germinal2-map.pdf',
  lecture:germinal2
)
puts "Document germinal2-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409330/documents/germinal4-extrait.pdf',
  lecture:germinal4
)
puts "Document germinal4-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409464/documents/germinal4-map.pdf',
  lecture:germinal4
)
puts "Document germinal4-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409361/documents/germinal5-extrait.pdf',
  lecture:germinal5
)
puts "Document germinal5-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409412/documents/germinal5-map.pdf',
  lecture:germinal5
)
puts "Document germinal5-map created"
#
Document.create!(
  title: "Citations utiles",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409344/documents/goriot0-citations.pdf',
  lecture:goriot0
)
puts "Document goriot0-citations created"
#
Document.create!(
  title: "Texte intégral",
  url:'https://beq.ebooksgratuits.com/balzac/Balzac-39.pdf',
  lecture:goriot0
)
puts "Document goriot0-integral created"
#
Document.create!(
  title: "Résumé chapitre par chapitre",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409353/documents/goriot0-summary.pdf',
  lecture:goriot0
)
puts "Document goriot0-summary created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409359/documents/goriot1-extrait.pdf',
  lecture:goriot1
)
puts "Document goriot1-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409405/documents/goriot1-map.pdf',
  lecture:goriot1
)
puts "Document goriot1-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409433/documents/goriot2-extrait.pdf',
  lecture:goriot2
)
puts "Document goriot2-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409446/documents/goriot2-map.pdf',
  lecture:goriot2
)
puts "Document goriot2-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409465/documents/goriot3-extrait.pdf',
  lecture:goriot3
)
puts "Document  created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409446/documents/goriot3-map.pdf',
  lecture:goriot3
)
puts "Document goriot3-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409454/documents/goriot4-extrait.pdf',
  lecture:goriot4
)
puts "Document goriot4-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409486/documents/goriot4-map.pdf',
  lecture:goriot4
)
puts "Document goriot4-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409464/documents/goriot5-extrait.pdf',
  lecture:goriot5
)
puts "Document goriot5-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409479/documents/horla1-extrait.pdf',
  lecture:horla1
)
puts "Document  created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409498/documents/ile1-extrait.pdf',
  lecture:ile1
)
puts "Document  created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409479/documents/jacques1-extrait.pdf',
  lecture:jacques1
)
puts "Document jacques1-extrait created"
#
Document.create!(
  title: "Résumé scène par scène",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409505/documents/lecid0-summary.pdf',
  lecture:lecid0
)
puts "Document lecid0-summary created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409497/documents/lecid1-extrait.pdf',
  lecture:lecid1
)
puts "Document lecid1-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409504/documents/lecid2-extrait.pdf',
  lecture:lecid2
)
puts "Document lecid2-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409594/documents/lecid2-map.pdf',
  lecture:lecid2
)
puts "Document lecid2-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409585/documents/lecid3-extrait.pdf',
  lecture:lecid3
)
puts "Document lecid3-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409599/documents/lecid3-map.pdf',
  lecture:lecid3
)
puts "Document lecid3-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409517/documents/lecid4-extrait.pdf',
  lecture:lecid4
)
puts "Document lecid4-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409553/documents/lecid4-map.pdf',
  lecture:lecid4
)
puts "Document lecid4-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409594/documents/lettres1-extrait.pdf',
  lecture:lettres1
)
puts "Document lettres1-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409597/documents/marseillaise1-extrait.pdf',
  lecture:marseillaise1
)
puts "Document marseillaise1-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409576/documents/marseillaise1-map.pdf',
  lecture:marseillaise1
)
puts "Document marseillaise1-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409628/documents/phedre1-extrait.pdf',
  lecture:phedre1
)
puts "Document phedre1-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409615/documents/phedre2-extrait.pdf',
  lecture:phedre2
)
puts "Document phedre2-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409879/documents/phedre2-map.pdf',
  lecture:phedre2
)
puts "Document phedre2-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409612/documents/phedre3-extrait.pdf',
  lecture:phedre3
)
puts "Document phedre3-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409606/documents/phedre4-extrait.pdf',
  lecture:phedre4
)
puts "Document phedre4-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409630/documents/phedre4-map.pdf',
  lecture:phedre4
)
puts "Document phedre4-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409637/documents/suif1-extrait.pdf',
  lecture:suif1
)
puts "Document suif1-extrait created"
#
Document.create!(
  title: "Résumé scène par scène",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409894/documents/tartuffe0-abstract.pdf',
  lecture:tartuffe0
)
puts "Document tartuffe0-abstract created"
#
Document.create!(
  title: "Texte intégral",
  url:'http://www.toutmoliere.net/IMG/pdf/tartuffe.pdf',
  lecture:tartuffe0
)
puts "Document tartuffe0-integral created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409645/documents/tartuffe1-extrait.pdf',
  lecture:tartuffe1
)
puts "Document tartuffe1-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409652/documents/tartuffe1-map.pdf',
  lecture:tartuffe1
)
puts "Document tartuffe1-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409657/documents/tartuffe2-extrait.pdf',
  lecture:tartuffe2
)
puts "Document tartuffe2-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409669/documents/tartuffe2-map.pdf',
  lecture:tartuffe2
)
puts "Document tartuffe2-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409667/documents/tartuffe3-extrait.pdf',
  lecture:tartuffe3
)
puts "Document tartuffe3-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409699/documents/tartuffe3-map.pdf',
  lecture:tartuffe3
)
puts "Document tartuffe3-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409669/documents/tartuffe4-extrait.pdf',
  lecture:tartuffe4
)
puts "Document tartuffe4-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473445532/documents/tartuffe4-map.pdf',
  lecture:tartuffe4
)
puts "Document tartuffe4-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409678/documents/tartuffe5-extrait.pdf',
  lecture:tartuffe5
)
puts "Document tartuffe5-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409695/documents/tartuffe5-map.pdf',
  lecture:tartuffe5
)
puts "Document tartuffe5-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409698/documents/tartuffe6-extrait.pdf',
  lecture:tartuffe6
)
puts "Document tartuffe6-extrait created"
#
Document.create!(
  title: "texte intégral",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473410116/documents/voyage0-integral.pdf',
  lecture:voyage0
)
puts "Document  created"
#
Document.create!(
  title: "Résumé chapitre par chapitre",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409814/documents/voyage0-summary.pdf',
  lecture:voyage0
)
puts "Document voyage0-summary created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409701/documents/voyage1-extrait.pdf',
  lecture:voyage1
)
puts "Document voyage1-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409763/documents/voyage1-map.pdf',
  lecture:voyage1
)
puts "Document voyage1-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409746/documents/voyage2-extrait.pdf',
  lecture:voyage2
)
puts "Document voyage2-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409726/documents/voyage2-map.pdf',
  lecture:voyage2
)
puts "Document voyage2-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409815/documents/voyage3-extrait.pdf',
  lecture:voyage3
)
puts "Document voyage3-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409806/documents/voyage3-map.pdf',
  lecture:voyage3
)
puts "Document voyage3-extrait created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409792/documents/voyage4-extrait.pdf',
  lecture:voyage4
)
puts "Document voyage4-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409851/documents/voyage4-map.pdf',
  lecture:voyage4
)
puts "Document voyage4-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409879/documents/voyage5-extrait.pdf',
  lecture:voyage5
)
puts "Document voyage5-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409907/documents/voyage5-map.pdf',
  lecture:voyage5
)
puts "Document voyage5-map created"
#
Document.create!(
  title: "Extrait étudié",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409845/documents/voyage6-extrait.pdf',
  lecture:voyage6
)
puts "Document voyage6-extrait created"
#
Document.create!(
  title: "Nuage de mots",
  url:'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1473409880/documents/voyage6-map.pdf',
  lecture:voyage6
)
puts "Document voyage6-map created"
#
#
# ==================== THE LEVELS ====================
#
sixieme = Level.create!(name: "Sixième")
sixieme.save
puts "Level sixieme created"
cinquieme = Level.create!(name: "Cinquième")
cinquieme.save
puts "Level cinquieme created"
quatrieme = Level.create!(name: "Quatrième")
quatrieme.save
puts "Level quatrieme created"
troisieme = Level.create!(name: "Troisième")
troisieme.save
puts "Level troisieme created"
seconde = Level.create!(name: "Seconde")
seconde.save
puts "Level seconde created"
premiere = Level.create!(name: "Première")
premiere.save
puts "Level premiere created"
terminale = Level.create!(name: "Terminale")
terminale.save
puts "Level terminale created"
etudiant = Level.create!(name: "Étudiant")
etudiant.save
puts "Level etudiant created"
prof = Level.create!(name: "Professeur")
prof.save
puts "Level prof created"
passionne = Level.create!(name: "Passionné")
passionne.save
puts "Level passione created"
curieux = Level.create!(name: "Curieux")
curieux.save
puts "Level curieux created"
#
# ==================== THE THEMES ====================
#
Theme.create!(name:'Initiation au théâtre', level: sixieme)
puts Theme.last.name
Theme.create!(name:'Conte et récit merveilleux', level: sixieme)
puts Theme.last.name
Theme.create!(name:'Initiation à la poésie', level: sixieme)
puts Theme.last.name
Theme.create!(name:'Les Fables', level: sixieme)
puts Theme.last.name
Theme.create!(name:'Poésie : jeux de langage', level: cinquieme)
puts Theme.last.name
Theme.create!(name:'Théâtre : la comédie', level: cinquieme)
puts Theme.last.name
Theme.create!(name:'Textes de dérision critique', level: cinquieme)
puts Theme.last.name
Theme.create!(name:'Moyen-âge et Renaissance', level: cinquieme)
puts Theme.last.name
Theme.create!(name:'Le récit au XIXe siècle', level: quatrieme)
puts Theme.last.name
Theme.create!(name:'Théâtre : rire, émouvoir, pleurer', level: quatrieme)
puts Theme.last.name
Theme.create!(name:'Le récit fantastique', level: quatrieme)
puts Theme.last.name
Theme.create!(name:'Le récit réaliste', level: quatrieme)
puts Theme.last.name
Theme.create!(name:'Poésie : le lyrisme', level: quatrieme)
puts Theme.last.name
Theme.create!(name:'Découverte de l\'argumentation', level: troisieme)
puts Theme.last.name
Theme.create!(name:'Récits d\'enfance et d\'adolescence', level: troisieme)
puts Theme.last.name
Theme.create!(name:'Regards sur l\'Histoire et le monde', level: troisieme)
puts Theme.last.name
Theme.create!(name:'Le récit au XXe et XXIe siècle', level: troisieme)
puts Theme.last.name
Theme.create!(name:'La poésie engagée', level: troisieme)
puts Theme.last.name
Theme.create!(name:'Démontrer, convaincre, persuader', level: seconde)
puts Theme.last.name
Theme.create!(name:'Un mouvement : le réalisme', level: seconde)
puts Theme.last.name
Theme.create!(name:'Un mouvement : le symbolisme', level: seconde)
puts Theme.last.name
Theme.create!(name:'Théâtre : la comédie et le drame', level: seconde)
puts Theme.last.name
Theme.create!(name:'Le travail de l\'écriture', level: seconde)
puts Theme.last.name
Theme.create!(name:'Un mouvement : le naturalisme', level: seconde)
puts Theme.last.name
Theme.create!(name:'Écrire, publier, lire (opt)', level: seconde)
puts Theme.last.name
Theme.create!(name:'Le récit : roman ou nouvelle', level: seconde)
puts Theme.last.name
Theme.create!(name:'L\'éloge et le blâme (opt)', level: seconde)
puts Theme.last.name
Theme.create!(name:'Le théâtre tragique', level: seconde)
puts Theme.last.name
Theme.create!(name:'Un mouvement : le romantisme', level: seconde)
puts Theme.last.name
Theme.create!(name:'Un mouvement : le surréalisme', level: seconde)
puts Theme.last.name
Theme.create!(name:'Un mouvement : les Lumières', level: premiere)
puts Theme.last.name
Theme.create!(name:'Convaincre, persuader, délibérer', level: premiere)
puts Theme.last.name
Theme.create!(name:'Poésie : formes fixes', level: premiere)
puts Theme.last.name
Theme.create!(name:'Le théâtre classique', level: premiere)
puts Theme.last.name
Theme.create!(name:'L\'autobiographie', level: premiere)
puts Theme.last.name
Theme.create!(name:'Un mouvement : l\'humanisme', level: premiere)
puts Theme.last.name
Theme.create!(name:'Le genre épistolaire', level: premiere)
puts Theme.last.name
Theme.create!(name:'Théâtre et représentation', level: premiere)
puts Theme.last.name
Theme.create!(name:'Poésie : le vers libre', level: premiere)
puts Theme.last.name
Theme.create!(name:'Un mouvement : le classicisme', level: premiere)
puts Theme.last.name
Theme.create!(name:'Littérature et débats d\'idées', level: terminale)
puts Theme.last.name
Theme.create!(name:'Grands modèles littéraires', level: terminale)
puts Theme.last.name
Theme.create!(name:'Littérature contemporaine', level: terminale)
puts Theme.last.name
Theme.create!(name:'Langage verbal et images', level: terminale)
puts Theme.last.name
Theme.create!(name:'Le roman et ses personnages', level: premiere)
puts Theme.last.name
Theme.create!(name:'Les réécritures', level: premiere)
puts Theme.last.name
Theme.create!(name:'Théâtre : continuité et renouvellement', level: troisieme)
puts Theme.last.name
Theme.create!(name:'Poésie moderne', level: troisieme)
puts Theme.last.name
Theme.create!(name:'La lettre', level: quatrieme)
puts Theme.last.name
Theme.create!(name:'La critique sociale au XVIIIe siècle', level: quatrieme)
puts Theme.last.name
#
# ==================== ADMIN USERS ====================
#
User.create!(
  email: "rboussot@gmail.com",
  password: "mlkmlk",
  admin: true,
  level: prof,
  firstname: "Romain",
  lastname: "Boussot",
  picture_url: 'http://res.cloudinary.com/mediaclasse-fr/image/upload/v1472379055/romain_ogqx4s.jpg'
  )
puts "User romain created"
#
# ==================== ALL USERS ====================
#
User.create!(email:'0692349699@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'11raffael11corceiro11@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'1214232213@qq.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'1976hamza1976@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'623696572@qq.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'a.ddiouf@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'a.macauley@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'a17111998@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'aanonyme236@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'aashkil@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'abcaicha@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'abcd_1982@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'abdarahmaneadiallo@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'abdasmad@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'abdelhadisalha@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'abderrahimeelgnaoui1212@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'abdo-1998@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'abdosam2005@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'abdoulaye2saikou@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'abdoulayegariko@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'abdoulayemounkoro@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'abelahrizi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'abiddjamel26@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'abir.essaoud@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'abir.mahdid@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'acanthe.stordeur@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'acer@cdmt.co.uk', password:'mlkmlk')
puts User.last.email
User.create!(email:'achourkessar@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'achraf.waguaf1@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'aclaire.bonnet@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'adaardora79@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'adam.nouha@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'adane.nardine@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'adeleb75@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'adiloifik@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'adja.mane@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'adnenellouz@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'adrianapaul@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'adrien.vilar@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'adrienmuzac@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'afifelias10@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'agatha.coniglio@v3.laclasse.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'agathechauvel@neuf.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'aghiles1@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'aghilim2@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'agnes.bordereau@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'agnes.tunis@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ahimour@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ahlam.roy@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ahlam.rvs@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ahlem-lyly@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'aitbrik05@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'aitoufkirsoufian@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ajyaljadida@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'akkazimehdi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'akrouned@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'akshah_n@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'albatros2205@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'albo66@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'alehalle@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'aleksandrra.cieslik@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'alell23@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'alex.verna@gmx.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'alex67sch@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'alex97@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'alexandramanlius@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'alexandre.daini@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'alexandre.girard0903@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'alexandre.le-bris@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'alexandrecousin13@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'alexcluj@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'alexiarui@hotmail.ch', password:'mlkmlk')
puts User.last.email
User.create!(email:'alexiayameogo@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'alexis.bernard@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'alexis.verdin.1998@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'alexisbodlet@sfr.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'alexisdumsa@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'alexj1613@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ali.alphassi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ali.maaraich@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'aliabenab@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'alice.lachaise@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'alice02.ad@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'aliceclaux@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'alihefied@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'alimoussa551@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'alisarcade@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'aliyassinove@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'allaedin9@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'allaouimariem@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'allison.baca@verizon.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'alma_du_92@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'almardot@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'alphonsines@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'alseyni93@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'alyonazhyvotun@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'alyssa.pasini@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'am.motte@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'amaldouce09@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'amalmoraga484@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'amandine.beck94@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'amanielmajzoub@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'amar-tu-vida@hotmail.es', password:'mlkmlk')
puts User.last.email
User.create!(email:'amarabarbarap@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'amarieca@uwyo.edu', password:'mlkmlk')
puts User.last.email
User.create!(email:'ambrejl69@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'amdouniraouf@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'amelie.pacaud49@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ameliedecharrin@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'amenmlik@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'amera.zarg@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'amina.eldiri@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'aminachalach@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'amineahmed181@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'amiramira1188@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'amitayehouri@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'amranekenza96@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ana.belda@ent-lfval.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'anaelle7563@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'anais.lepers2000@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'anaisdenimal@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ananour24@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'anaross94@gmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'anas.elaakil@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'anastasian86@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'anastsge@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'anderrie@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'andre.chaplice@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'andreasacay@uol.com.br', password:'mlkmlk')
puts User.last.email
User.create!(email:'andremoutinho25@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'andrew_morgan@live.co.uk', password:'mlkmlk')
puts User.last.email
User.create!(email:'andromaque.astyanax@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'aneso-79@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'angela94.lam@live.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'angele29210@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'angelemaitre52@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'angelique.bauchet@sfr.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'angie.v98@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'anissa.adel@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'anita.dauvergne@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'anne_courtier@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'anne.sorita@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'anne.veghte-quatravaux@ac-montpellier.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'anneastou@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'annemariecorso@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'annesophie.laugt@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'anouk@meunier.be', password:'mlkmlk')
puts User.last.email
User.create!(email:'ansodido@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'anthealeroux@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'anthony.martinez991216@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'antoine.juillard7@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'antony.visticot@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'antzoul@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'anwarkesmi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'arayehjoujou@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'arcade.annelise@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'archimbaudserge@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ardasse3dhd@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'arom.silva23@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'arthur.castilla19@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'arthur.pirat@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'arthurlouvet.al@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'arwamima1994@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'as.julien19@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'asmaaeyaassine@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'assem33_270@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'assoufi11h@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'asterix205@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'astridcocciuti@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ataallah.art@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'atefbm@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ateodosg111@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'athoussine@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'atig.dorra@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'atomic_anne@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'attika.sahraoui@gmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'attouche1@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'attt86@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'audeplumier@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'audidi80@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'audrey.maurel@legiondhonneur.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'audrey.mf@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'augustepugnet1@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'augustin.meric17@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'aur-l-ie@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'aureganegraffagnino@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'aurelien-laporte@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'aurore.renouxl@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'austinjen37@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'australian.cairns@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'autoecolestcharles28@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'automneici@163.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'autrecrd@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'av.solntseva@mgou.ru', password:'mlkmlk')
puts User.last.email
User.create!(email:'avan.tolga@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'aveline.merle@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'avrkh@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'awadasow94@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'awh1austin@comcast.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'axelle.chup@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ayanedu94@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ayda87@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ayline.cokragan@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'aymen.said0411@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'aymeric97240@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ayoubhunterr@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ayoum@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'azizagherib@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'azizamestiri99@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'azizdassilva@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'b.gourmelen@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'b.haybrard@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'b.r.z.fakeerah@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'b4by_kenann@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'babacar_ndiaye@rocketmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bacnag@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'badr_101@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'bahd_11@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'bahmido@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bahri.zak@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bajcarvalho@yahoo.com.br', password:'mlkmlk')
puts User.last.email
User.create!(email:'balthazarblake783@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bamjaafar@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'baravel@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'barbapaparoselol@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'barbara.2015@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'barbe.enfouillis@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'barraud.rose@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bartesch.brigitte@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'barthes001@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'basherabdalrhman1990@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'baskerwa@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'basma.elmajdoubi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bassem.lakhal@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'basuwara@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'batoul.farhat@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bayzaalsalam@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bbl.serbie123@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bbunel08@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'bcdevaugu78@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'bchrdll@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'beatrice-court@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'beatrice.bartesch@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bedoudiane@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'belghaoutisalah@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'belkacemi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bella187@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'benayadhassani@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bencoaster93@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bendemtc@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bene243.92@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'benhafsaf@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'benithour_30_72@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'benjaminbogaerts@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bennoui.m@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'benoit.guetny@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'benoit.jacques56@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'benoitbatind@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'berdu2@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'bergame.ty@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bergie38@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'bernard.simier@mail.pf', password:'mlkmlk')
puts User.last.email
User.create!(email:'berni.deaudouce@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'berrada.achraf@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'bettyboopcandy@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'beyeabdoubeye@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bfed17@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bhdavid64@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bignonfr@neuf.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'blanche@perreau-saussine.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'bleonamethasani.bm@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bleuettedidi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bmarlin@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'bmsfa.ranya@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bn.wasser@gmx.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'bnd.chaima@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bodletdavid@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'boetti.tristan@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'boisson.m@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'bolliger.leo@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'boucherit68@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bouchiha1968@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bouchutp.prof@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'boud-raph@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'boudhasna@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'boule-x@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'boumeddinemalik@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bourdier.j@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'bourgeoismarine@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'boutlaneyoussef@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'boutoumitmohammed@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bouzekif@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'boydrbaln@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bps2059@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bracodouardo@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'brahimmalk90@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bricediomande@googlemail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'briceyaok@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'bromi.meryem@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'brunelrobin@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bruno@breviero.org', password:'mlkmlk')
puts User.last.email
User.create!(email:'bs2007@noos.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'bubbledark@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'buisnessdu33@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bukettopbas@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'bukhalil_1900@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'byoumar82@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'c.fernandez6@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'c.fernandez61@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'cabinetmjc@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'camila.romero26@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'camille.lebosse29@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'camille190697@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'camilledelattre7@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'camilleriviere82@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'candrose@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'canelle.platiau@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'carladossantos85@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'carlanota@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'carlita.99@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'carolecailleaux@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'caroline.carmona@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'caroline.ismenoux@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'caroline.leteinturier@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'caroline.marquant@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'caroline.mazepac@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'caseymare99@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cassanjulie@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'cassier14@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'caterinacarlini@tiscali.it', password:'mlkmlk')
puts User.last.email
User.create!(email:'cath.robins@sky.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cathaux.jean-claude@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'catherine.robichon@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'catia.cat@hotmail.it', password:'mlkmlk')
puts User.last.email
User.create!(email:'caturanga@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cccoudreau@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ceahassani@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cecile.marion72@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cecile.tnnvgs@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cecileyang00@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'cecilia.munoz-rivas@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'cecilia.munoz1978.13@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cedriclaura.cc@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cedricpseudorn@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'cel975@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'celine-gasnier@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'celine.flandrin1978@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'celine.fuentesg@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cguidetti9@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'chaabaayoub@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'chaalalsoumia@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'chadisoussou@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'chaimae.semlali.a.h@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'chaimae.zoui@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'chamaillardceliane4@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'chamoussetantoine@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'chancedouala@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'chanzechi@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'charleneco@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'charles-olivierx2@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'charles.connolly.2015@mumail.ie', password:'mlkmlk')
puts User.last.email
User.create!(email:'charlesgeny@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'charlotte.restout@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'charlottereant28@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'cheemazenab@yahoo.be', password:'mlkmlk')
puts User.last.email
User.create!(email:'cheiguerb@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cheikhounand91@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cheikhsall770@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'chergguia@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'cherqaouig@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'chiluntania@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'chinecharlotte@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'chiraz.show@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'chjulie_fr@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'chloe_sautter-leger@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'chloe.duez@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'chloepavie7@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'chlohardy28@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'christel.allegri@uvsq.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'christel.mourey@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'christian.braunstein@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'christine.guillou@ac-versailles.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'christkr@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'chudoan33@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cicdiagana@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ciel.saintpierre@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cilceepisan@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cin1234@verizon.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'cind.levy@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cio@gmx.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'cipicon@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ckennel@lelycee.org', password:'mlkmlk')
puts User.last.email
User.create!(email:'ckinguenaud@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'claire.dieumegard@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'claire.musikas@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'claire.regniez13@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'claramegandelaney08@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'clarisse.cristas@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'classefr@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'claudia.manna16@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'clemence-gutierrez@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'clemence.alexandra@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'clemence.blanccarrasco@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'clemencefranc@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'clujien@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cnovak@greenhillsschool.org', password:'mlkmlk')
puts User.last.email
User.create!(email:'coeur_dor@live.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'colettemarieceline@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'constancecharlet@sfr.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'constancepub75@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'convertiniclara@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'cor.bkr@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'coralie.balloche@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'corentintrencart@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'corinna.borg@rub.de', password:'mlkmlk')
puts User.last.email
User.create!(email:'cornacchia.melissa@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'coulman120@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'courtaudenomis@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'covillommet@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cristen.hamonic@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cronopioalephson@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'crozier.c@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'crusoe9000@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'crysys.2008@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ctrinquet@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cuzoucynthia@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'cyrielle.mainguy@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'cyril-lenoble1@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'cyrus_77@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'d.mezahdi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'d.tahiri89@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'daanedjiiin77@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'dagmawin40@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'dahkoutam@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'daisy_1998@live.it', password:'mlkmlk')
puts User.last.email
User.create!(email:'damien.chenaux@inares.org', password:'mlkmlk')
puts User.last.email
User.create!(email:'danachirila@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'danaegoffart@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'danan.rebecca@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'daniel.knall-demars@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'danielacallipo@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'danprovostem@udec.cl', password:'mlkmlk')
puts User.last.email
User.create!(email:'danylishu@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'daodetandio@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'daphnebloch80@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'dariofulci@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'dartoisn@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'david.fradcourt@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'david.gjbass@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'david.peugnet@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'davidbeuret@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'davidboubakary@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'davidqu@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'dawi.khawi2000@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'dbreizh@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'degna5@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'dehan.gabriel@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'delcaussefabien@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'delphine.trastour@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'delplace.margaux@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'demat@club-internet.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'demontreuillebenjamin@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'denis.macpro@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'dentnac@msn.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'despey972@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'destais.annie@sfr.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'devaugu30@gmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'dezzelregal@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'dgiovanneschi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'diabolo-cerize@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'diahacene@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'diana.espinoza219@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'diane.schneider@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'didi.19@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'didier.marlot1@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'diehlchristoph@aol.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'diellza_ajeti@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'dies8irae@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'dihafrassek@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'dina_yy@hotmail.fr`', password:'mlkmlk')
puts User.last.email
User.create!(email:'dinoussa96@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'dionnec@videotron.ca', password:'mlkmlk')
puts User.last.email
User.create!(email:'diopaly78@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'djabirovasabina@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'djamel_98@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'domidespres@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'dongfackaudric@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'donia.benaissa16@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'donkhanin@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'donroropopup@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'dorismarlianizaza@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'dosreislaura@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'down_15@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'dr.l.aresta@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'dr.serrao@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'draibined@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'dramemamadou375@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'drazezzofficiel@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'drdemane@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'dsvieira@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'dulas.wendy@hitmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'duzou555@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'dwhbtaylor@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'dzeladin.dzeladin@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'e.debretagne@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'e.lhoste@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'e.vernisse@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'eatif2@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ebuzare@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'eddiemanda@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'eddietolmie@yahoo.co.uk', password:'mlkmlk')
puts User.last.email
User.create!(email:'eddymalaga@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'edenmercier1@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'edite_hachem.14@live.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'educhaus@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'egolbery@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'elbaazaoui.hassnaa@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'elbachirbenmahdi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'eleacorbo@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'elena_24@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'elena.pfeffer@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'elenacoman@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'elenamolto@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'elgaroto@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'elgghiyatkhawla1512@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'elghandourfatima11@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'elgouzi1993@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'elhaibisaliha@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'eliottmanzanero@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'eliottmax@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'elisabeth.marion@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'elisabeth.prouteau@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'elisabeth.reisser@live.at', password:'mlkmlk')
puts User.last.email
User.create!(email:'elisacm1b@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'elisarussier@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'elitatou@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'elkheirsamira@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'elmahjoub10@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'elmassaoudi16@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'elmeskin.youssef@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'elodienev@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'eloina17@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'elom985@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'elsatiphaine@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'emailtosimone@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'emas.junior@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'emeryc24@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'emhoms@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'emilien_mantel@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'emma.castro95@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'emmapleignet@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'emmie.deleglise@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'empy21@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'enola.mal@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'enzinina@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'enzo.vaz@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'enzothewinner25@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'epic.rafa@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'equitamiss@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'eric.depose@bisad.ae', password:'mlkmlk')
puts User.last.email
User.create!(email:'eric.galland@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'eric@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'erictehard@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'erivelton.lima.tech@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'essonni@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'etiennept@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'etoiles10@homail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'eulaliavf@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'evan.kerangueven@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'eve_07@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'evely.garcia@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'evita.tib@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'exjupiter@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ezzarquifatma@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ezzemmourizak@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'f.jourdan555@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'f.kafi0609@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'fabbri.maria@hotmail.it', password:'mlkmlk')
puts User.last.email
User.create!(email:'fabien.rickling67110@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fabre.joan@sfr.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'fadiatimo@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fallenzop@gmx.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'famille.choquet0949@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'famillelsdupre@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fanny.riou78@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fanny.sipp@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fannyboutigny@aol.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fannydubois37@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fannymagnier30@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fannymathilde.rio@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fannypublicite@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'faroussa58@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'farzane.emad@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fatemalea@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fathbribri@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'fathidriss9@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fatima-13127@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'fatima.bouzebra@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fatimadardara@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fatimaezahrae.fa@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fatimaezzahraaithaddou@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'fatimazahra.fawzi89@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fatimzahra1999@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fcazeresemmanuel@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fearlessxxo@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'feeling855@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fel.devauguerin@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'felix.buffet@yahho.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'felix.buffet@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ferdaousakdi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ferdinandwalter2000@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fernanda.bentsik@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fethineili@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fidanaskan@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'filipa1290@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'finestrat@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'fionaandre@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'firejellyfishstorm@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'flashcard152@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'flavienarm@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fleuristekech@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fliti.patrick@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'flj971@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'flo.nait@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'flora.tmr63@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'florann.aubry@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'florence.jaouen@bbox.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'florence.millon@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'florynahdary@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fnkaoui@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fofita1999@live.com.pt', password:'mlkmlk')
puts User.last.email
User.create!(email:'fontanari.milan@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'forlan19942010@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'fotbolls_sara@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fouad.bentata@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'foucaultvickie@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fouine72@live.ca', password:'mlkmlk')
puts User.last.email
User.create!(email:'fouzmouss@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'francesca.crotti.a@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'franck@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'francois.juzen@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'francoisessomba@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'francoismuguet@sfr.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'frank.bryden@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'franzfischer1@yahoo.de', password:'mlkmlk')
puts User.last.email
User.create!(email:'fre.joly-cayla@live.ca', password:'mlkmlk')
puts User.last.email
User.create!(email:'frederic.riant@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'freding7@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'freezecsx@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fresou@claudel.org', password:'mlkmlk')
puts User.last.email
User.create!(email:'freyaidaf@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'fulkumari@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'gaaloulelyes@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'gagacucu@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'gamakichi19@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'garinenathalie@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'gatoune.catel@neuf.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'gaufranerbz@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'gauthier.25@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'gayzril@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'gbujkaily@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'geany_h@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'gernotf@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'gessicamenthor@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'gh.chav@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ghalemb07@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ghislainengue@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'gillot33@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'gilno482@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'giovannavanna13@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'gmsiqueira.hist@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'gogou.bn@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'gprothon@lyceefrancais.org.uk', password:'mlkmlk')
puts User.last.email
User.create!(email:'gr.b@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'gracestevymoukila@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'gregoire.lavenant@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'guara7guara@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'guerr.victor@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'guery.marylene@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'guettit_saraludmila@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'guilloteau43@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'guita81@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'guitar._.man@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'gwenaelle@demaleissye.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'gwenolablchnvttr@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'h_abbassi@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'h.demalaf@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'h.tourn@club-internet.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ha31kim@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'hadil.fares@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hadjalisiwar@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hafid.abid@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'hajjaj59@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'hakimaitallla@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'halfi1961@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'halimmilah@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hamdi.moussa1@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'hammou_48@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hamzagherbi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hamzaoui@onhym.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hanaerhourbi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hanan.elhadjaji@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hanane-outmani@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hananechatouani@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hanouna444@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'harlez@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'hasabrina@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'hasna.didi@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'hasnaeaqboub@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hassan120@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hassan5d@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'hassanaidani@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'hayatdu477@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'haythaam93@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'heart-and-spirit1@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'heeslu@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hefiedm@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'helen-y@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'helene.beaulieu0967@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'helene.ulku@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'helenejb@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'helloraton@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'helmarquet@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'helmer_avocat@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'heloise.gigou@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'hemsas.kaouther@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hfaure@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hiba1997saadaoui@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hibamolitas@gmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'hicham.ouhami@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hindkhouya87.kh@gmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'hklapisz@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hmarquet@kingsworth.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'houcine.azeroil@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'houda1198@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hounwanou1996@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hshimaa117@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'hsnhsn2@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'huetgrgor@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'hugo.88@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'hugolefou@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'huynhcedric13@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'i.bassin@gmx.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'ibaaliounediop@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ibrahim45@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ibtissam94200@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ice_suz@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'icherloubna@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'icreeziiuix@gmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'idemonts@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ifquirenetudiant@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'igordaveiga@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ihox687@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ikram.elkebch@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ilaiali@ilaiali.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ilias1235@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'iliesnur@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'imad.faraj@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'imariecath@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'imeensh@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'imerheeb@arezschool.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'imidbou78@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ines.breit@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ines.garreau98@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ines.gn2000@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ines.vizin@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'inesjeguirim99@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'info.coudray@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'inga-stella@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'inkymaurey@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'insight357@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'into_912@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'iphonesihem1@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'irepaula@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'isa.redon-rochaix@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'isabella.ekstam@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'isabelle.dubois-saulus@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'isabelle.plenier@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'isabge@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'isadona@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'isamartin972@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'isanico.desforges@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'isassoufflet@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'isma.mekhaznia@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ismaelsavane90@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ismailatourki@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'iss@dartfordgrammargirls.kent.sch.uk', password:'mlkmlk')
puts User.last.email
User.create!(email:'iuli.ma@yahoo.de', password:'mlkmlk')
puts User.last.email
User.create!(email:'iulianogaia@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jacques.capard@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'jacques.rancourt9@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jacqueslessard@mac.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jade.kistnasamy@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jade.so@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jadominguez@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'james.christy@villanova.edu', password:'mlkmlk')
puts User.last.email
User.create!(email:'jandersim@yahoo.de', password:'mlkmlk')
puts User.last.email
User.create!(email:'janebeyrouthy@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'janeliuyan7@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jasna.kolbah@aisz.hr', password:'mlkmlk')
puts User.last.email
User.create!(email:'jassimhamdi@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'jcarrion1@student.gsu.edu', password:'mlkmlk')
puts User.last.email
User.create!(email:'jeaidi.mohammed@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jean.mioland@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jean.warszkiel@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'jeanbaptistedjietcheu@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'jeanclairemond@live.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jeanjures@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jeanne.hutin@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jeenhassan@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'jelenalazarevski@rocketmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jenalee090899@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'jenanelahoussine@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jenifertiutu@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'jennane.arbia@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'jeremy.salmon@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jeremykimjkim@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jerome.ceccon@eeb1.eu', password:'mlkmlk')
puts User.last.email
User.create!(email:'jerome62610@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'jerome62610@outook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'jeromeetisabelle@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jesica_epcl@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jesspasquier@bluewin.ch', password:'mlkmlk')
puts User.last.email
User.create!(email:'jessy.barny@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jessycalecrivain@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'jeujgd@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'jgomis437@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jinane.bnj.97@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'jl.jeremie357@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jmf31415@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jmi.colom@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'joelle.stephan@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'joelsa.alex@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'johaline.basnary@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'johannadelubes@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'joleama111@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jolicoeurfatine@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jonspero@me.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jorgesanchezvega@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'josh.snowboarding@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'joujouarayeh@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jovanajapanessegirl@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jpqueffelec@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jridisemia@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ju.fleury@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'juanvereauf@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jude.choinchoin@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'judith.jugie@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'jujurara10@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'julia.carpene@ac-strasbourg.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'juliavilliet@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'julie-j.c@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'julie.colon@ismreves.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'julie.cottier@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'julie.laroche1@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'julienbachelet01@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'julienmartinetti@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'juliette.crpe@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'juniorabarison@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'justine.bossy@stfrancoislaroche.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'justine.mingot@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'justine.stemmelin@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'k.chaw@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ka.umbrella@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ka@lefort.so', password:'mlkmlk')
puts User.last.email
User.create!(email:'kadesagazan@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kadhoud@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kaimecesar@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'kais.bouhari@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kamal4700@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kamalpositif@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kams.merveille@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kaoutar.aboulassoued@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'karamadelmand@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'karenmolk@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'kari.ha.pe2015@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'karim.bonheur@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'karim.sedraia@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'karimmaroc@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'karimmmaroc@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'karinedora.malka@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'karyn.loraux@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kasmalass@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'katia.robinson@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'kawtar_tanger96@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kbransten@aol.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kenza1direction@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kevin.bensoussan@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'kevin.oudelet@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kevin.parro@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'kevin99lck@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kevinlambert300600@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kevorte34@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'khadija-25-douja@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'khadija25alaoui@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'khaleddorra@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'khalid.philosophe@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'khami_med@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'killian.boue@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'killian.sheriff@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kirstenhusung@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'klreinders49@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kodras97@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'koundi1@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ks-ay@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'kurkova.anicka@seznam.cz', password:'mlkmlk')
puts User.last.email
User.create!(email:'kuro.usagi612@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kurteshi.alban@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kyacouba72@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'kychialc@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'l.attal@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'l.ouildchaib@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'labiadrachid@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lachucarro@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'laferreira@udec.cl', password:'mlkmlk')
puts User.last.email
User.create!(email:'lailaloula93@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lainamarouan@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lakhal.elmostafa@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lamich47@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'lamyaemargoum@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'larmgm14@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'laskadnadia@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'latifa021981@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lauceane@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'laura.cyrille@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'laura.sighirdjian@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lauralougassi57@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'laure.dueme@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'laureluccioni@sfr.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'laurent.asset@outlook.de', password:'mlkmlk')
puts User.last.email
User.create!(email:'laurent.barale@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'laurent.guillon17@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'laurepegorie@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'laurine.tornare@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'laurinefouchet@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'laythe_15@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lchaulieu@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lea.m.1806@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lea.poirier@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lea.sydney@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lea0807@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'leaponcelet@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'leborgnestephanie@neuf.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'leclerc.m2@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'lecorre.elise@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lecuyerfanny@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lefevrevalentin@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'lelait@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'lemaitredumonde.972@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lemst550p@ebac.lu', password:'mlkmlk')
puts User.last.email
User.create!(email:'lenainfamily@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'leo.viguiers3@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'leone.haldimann@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'leonfortebeatrice@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'leonie.vonbaehr@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'leprevost.sophie@neuf.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'lghribe@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'licia94@virgilio.it', password:'mlkmlk')
puts User.last.email
User.create!(email:'lieven.bracke@skynet.be', password:'mlkmlk')
puts User.last.email
User.create!(email:'lilian.dumay69570@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lina.zebbar96@outook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'linda.ait95@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'linda.vlahovic@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'linguistique2014@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'linsey.valente@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lisaschobing@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lise.vendangeot@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lissa.price@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'litteralille@neuf.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'livia.deperetti@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'lizcn@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lllandemaine@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lmariana77@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lnk@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'loanlamy160500@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lobojuba@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'logervoson@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'logyc@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'loiklc92@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lola_costes@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lolsilveira@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'loncelot@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'loolerlooter@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'loredanaconte14@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lorisbenistand@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lotfiamel@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'lou.salle@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'louan.dupuy@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'loubna.abida@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'loudandy@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'loudhoubi@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'louifim@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'louis.thomas6@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'louisboyer13@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'louise.revy@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'louise10gendry@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'louisegendry@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'louisferdinant.sansal@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'louiza.embarek@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'louniaouli@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lounoi3@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'louxavld@bbox.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'louxavld@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lp.lety@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'lpmz9g5z@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ltremearc@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'luc.martin@csduroy.qc.ca', password:'mlkmlk')
puts User.last.email
User.create!(email:'lucasvaudey@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lucia.canonero@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lucie.bacon@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'lucie.daumal@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'lucie.rajha@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'luciemrt16@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lucienwater@hotmail.ch', password:'mlkmlk')
puts User.last.email
User.create!(email:'luciie91@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'luckytda59@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ludavignon@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ludomayran@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ludovicbeslin@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lue0815@gmx.ch', password:'mlkmlk')
puts User.last.email
User.create!(email:'luhvanny@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lukana31@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'luluchambre@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'lusi@live.be', password:'mlkmlk')
puts User.last.email
User.create!(email:'lussiana1@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'lustramae@gmai.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'luzarenaholgado@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lydia696li@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lynn.sabir@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'lysias30@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'m.bea101@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'m.bentaguar@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'m.thoraval@chello.nl', password:'mlkmlk')
puts User.last.email
User.create!(email:'m.vialatte0@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'ma.hamoumi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ma3lich.k.r@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ma3lich.k.r@gmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mabenali@mail.mobistar.be', password:'mlkmlk')
puts User.last.email
User.create!(email:'mabevj@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'macha1998@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'madame.presa@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'madamebousmaha@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'madobeau@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'maelig.louesdon@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'maellou99@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'maga67000@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'magalhaes_marisa@hotmail.ch', password:'mlkmlk')
puts User.last.email
User.create!(email:'magali.seijido@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'magareta@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'magda.dobrzalska@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'magunouchi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'maha.oumada@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mahashana@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'maia.sicouri@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'maimoboot18@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'maja.dojcinova@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'majidaelmanssouri@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'malak.mohamed_01@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'malek.gazaa@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'malik93260@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mamadousavane889@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mamoumalha@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'manavaimoukamtse@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mancelsab@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'manelle.saidi@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'manon.gray@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'manon2602@gmx.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'manonbiarneix@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'manonramage@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mantionraphael@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'marc.fourreau@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'marcbi1@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'marcioalexandrecruz@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'marevita@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'margaux.malingre@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'margauxpoissonnier@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'margherita@revelli.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'marian.tinari@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mariane.mendes16@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'marianne.chomienne@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'marie-gaelle.roubelat@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'marie-jacques@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'marie.ponseele-rose@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'marie.rannou2000@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'marieangelsambou@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'marieceline.collet@sfr.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'marieclemence.kouame@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'marielle.behlert@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mariepierrebelaich@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'marietassiers@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'marina.p.brm@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'marine.baume@hotail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'marine.baume@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'marine.mic@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'marine.simos@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mariogilc@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'marion.gizardin@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'marion.granger@neuf.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'marionnette59496@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'marionnette59496@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'marlloon917@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'maroui.amina@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'marta.jolanda@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'martine.clabaux@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'maryameka@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'marzie.ghafouri@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'masonduede@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'massartmaxime6@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'matheo.calvo@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mathias.selou@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'matiasmata73@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'matteuv@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'matthias.davet@netplus.ch', password:'mlkmlk')
puts User.last.email
User.create!(email:'matthieu.blanquer@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'matthieu.mellot@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mauro.manto@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mavou-@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'max.valmorin@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'maxime.allouch@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mayliscottetd@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mbarekbassam@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mchantal.kouame@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mckboulos@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mclemencekouame@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'meditoub@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'meganethomas@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'melanie.allouche_ort@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'melanie.chedeville@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'melek.baccar@orange.tn', password:'mlkmlk')
puts User.last.email
User.create!(email:'mellesoumeya.boumaza@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'merbouhachraf@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mercedes.torres0829@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mercieroriane@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'meriam.harthanks@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'meriame.derouich@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'merrybl42@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mesand27@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mfsavarylenoir@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mgirard46@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'michaeltufft@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'michel.le-guiff@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'michele.boussot@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'michelleduflot@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'micka_do@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mickasson@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'midou_1998@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mikemanu@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'mikymarghe@yahoo.it', password:'mlkmlk')
puts User.last.email
User.create!(email:'milenayordanova12@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'milla.ficht@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mille1pubs@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'miller-smith_d@habsboys.org.uk', password:'mlkmlk')
puts User.last.email
User.create!(email:'miloctf@aol.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'milou.amez@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mimi020790@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mimik192002@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mimine.gh20@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'minayasmine66@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mireillemoquet@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'miriam.balle@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'misshimeka@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'misslittleroxy@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'misswidjina@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mizra.dane@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mk6300000@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mlcolm24@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mleguiff1@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mlk55@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mlle.mary.amankwa@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mmelaprof@bellsouth.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'mo.marwen@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mobarryfr@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'moflines@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mohamed1090oublal@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mohamed82000i@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mohamedlanani@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mokhtar_mourad@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mona.fodah@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'monnerymarc@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'moradelbahloul@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'morand.jean-luc@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'moreaumaylis761@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'moreirap.helena@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'morgane.chatagner@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'morgane.duffy16@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'morganeriotte15@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mouhoudhoiretasmine@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mouncef.2013@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mounim.as@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mountaga04@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'moussa.azzam@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'moustaphasonko397@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mozo.ambroco@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mrmzeina@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mruiz.2018@lfny.org', password:'mlkmlk')
puts User.last.email
User.create!(email:'msteinmetz@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mullerdjemaa@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mullergb@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mumarquet@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'muriel2604@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'mus93120@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'musicia@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'musico_nacho@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'myaomar1@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'mymilasourie@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'myriam.gulraiz@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'myriam.judic@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'n.annanaomi@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'n.d.f@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'nabilmahmar@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nabourjouni@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nabsoughlan@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nachambi@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nada_hs_dh@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'nadegemelyon@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'nadia-rose-noir@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'nadinegougnaud@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nadir_du_93300@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'naima_bdm@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'naima.chiron@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'najat_chifa@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'najoua.serghini@student.hu.nl', password:'mlkmlk')
puts User.last.email
User.create!(email:'naoufal.kmich@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'natatou971@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'nath.delay@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'nathalie.garine@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'nathan.renaud@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'nathflo06@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'nawal_lakhdarhamina@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'nb.cfie@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'neibanlucky@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'neirelledu01@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nemri.hanan@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ng_zhao_feng@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nganayeo@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nick516038436@aol.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nico.439@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'nicolas.zanolini@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nicole.mueller2@edubs.ch', password:'mlkmlk')
puts User.last.email
User.create!(email:'nikaybader@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nina.benzakine@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ninadalia7@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nixoleta@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nizari_rachid@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'njan.alexandre.marcel@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'njbdancer720@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'no36ur1999@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'noah.babaeva@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'noel.boussot@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'noelieroyer@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'noemie.sannier@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nogueiraleonard3@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nolwen.sucin@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nolwenn.claudic.breizh@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nolwenn.hooli@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'nolwenn.tondoux@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'noraelyazid@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'norina_97@hotmail.it', password:'mlkmlk')
puts User.last.email
User.create!(email:'nou-rita@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'nouarimus@mail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nouhaboussandel@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nour.benkhaled@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nour12345678910@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'nour16@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nourlislame@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'noussa1309@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'noussaibaaster7@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'nschmir@waynflete.org', password:'mlkmlk')
puts User.last.email
User.create!(email:'nsiminovich@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'nsoazig@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'oanaferman@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'oberle.floriane@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'oce.imbert@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'olgalemagnen@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'oliveira-ricardo@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'oliviakhalf@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'olivier.branchoux@sfr.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'olivierprothon@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ollivier-de-pierrepont@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'omar.hnini.ben@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'omildred@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'onsbenrejeb@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'opboulard@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ophelietn@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'oran511954@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'oreo90210@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ornice.giaccardi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'oscaragbessi@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ottavia_90@hotmail.it', password:'mlkmlk')
puts User.last.email
User.create!(email:'ouaja.leila@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ouattaralamine156@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ouchen.najia@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'oui-chtati@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ouissellat.s@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'oujijou@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'oulmes1994@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'oumaimainsaf@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'oumeima_baazaoui@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'oumnia_g1@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ouscha@claudel.org', password:'mlkmlk')
puts User.last.email
User.create!(email:'outhami.b@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'over.us@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ozil.real-madrid@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'pacalet.maxime@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'pacanna7@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'paco.sylvo@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'pacofazadi77@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'pagacova.natalka9@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'panadolextra5@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'panelier@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'papeyoussou_10@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'papouckainou@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'paranoia.nevrose@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'parentle00@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'parsath5@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'pascal.rongveaux@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'pascal@htlm.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'pascale.albert@ac-nancy-metz.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'patricia.friess@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'patriciadubreuil@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'patrickdelonzien@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'patrig.kernoa@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'paul.carluy@numericable.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'paul.redon7@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'paulegraceprinciab@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'pauline.vormus@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'pauline14320@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'pdavergne@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'penanklihicyrille@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'peneau.olivier@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'perez.lise13160@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'perrine.decoetlogon@univ-lille2.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'pete_intense@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'petit_prince2000@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'petit.justyna@dbmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'petit.justyna@dmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'petitefleurdescoeurs@msn.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'petitesouris4ever@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'petitoiseaudesiles@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'pgaret1@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'pgchaptal@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'phie-craponne@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'philippdorschel@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'philippe.barascud@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'philjoly1@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'photoart.rc@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'phuong.pelloquin@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'pia.songz00@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'pierre-henri.besnard@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'pierre.margelin@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'pierre.sarro@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'pierrelejeunetragin@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'pierrick1984@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'pikolechat@hotmail.ca', password:'mlkmlk')
puts User.last.email
User.create!(email:'pitnora@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'placer.mathilde@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'pmenec@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'poloparfait@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'poly.flambeau@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'porcelaine_idea@msn.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'poulenote1@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'pppbon@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'pretty_84@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'prince111b@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'princeyouzy@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'prof.yvanbourbon@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'profaneacteur@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'professyounes@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'profnataliagamez@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'prolic92@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'punit.jamba@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'qmike549@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'qpaelinck@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'quentinpaumier@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'r.keriou@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rabatfas@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rabatrabat79@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rabiagharnit@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'racha_1436@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rachel.andri48@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rachid_chafik92@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'rachid69@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'rachid777777777@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rachidbousghiri@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rafabarrefili@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rafiquement@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rafrico96@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rais.tijani@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'rajawipurdefils@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'raji.hassnaa@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rajihassnaa@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rakotoarisatajuvencia@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ramalingam.raphael@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ramdaniwassim01@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ramimo11@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ramosomar688@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ramzimakhlouf.3477@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rannouln@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ranyita_rania@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rapha.viaud@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'raphael.yadan@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'raphaelhirst@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'rapharobylecomte@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rawiyaa@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rays1502@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'razan_zaki@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'razimed69@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rcn@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'rdpirson1@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rebeccarib@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rebodet11@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'reda.benali102@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'redabenali102@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rede.abdurahim@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'redeaglex1@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'redwaneaitouammi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'remi.chauveau87430@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'remi.pruvot@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'renatanarducci@yahoo.it', password:'mlkmlk')
puts User.last.email
User.create!(email:'renaudmbaye@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'renoiz-224@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'reunion.leo19@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rianelamniai@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'richardsucces@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ridoingmorethanpaidfor@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rieuxcelia@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'riri.lagravere@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ritaafalam@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rlacy@nyc.rr.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'robertalanzone@virgilio.it', password:'mlkmlk')
puts User.last.email
User.create!(email:'rodrigodespereira@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rolanddechezelles@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'romain-carry@sfr.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'romain.dafflon@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'romain.saurer@unine.ch', password:'mlkmlk')
puts User.last.email
User.create!(email:'romancobtob@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ronikalala@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'roo-@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'roodjina_francois@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'rorodouing@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'roussel.irwin@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'rsowamy@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'rumm1@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ryan@quinns.ch', password:'mlkmlk')
puts User.last.email
User.create!(email:'s.rajagopal@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'s.tournafol@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'saadanalinda1999@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'saadiaserhane@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sabau.karine@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sabine.dreyfus@neuf.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sabinebouchard@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sabrineabd.sa@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sabrinesabrinou2@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sacha.s13@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sacha34130@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sachasilberman@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sadiksupmit@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'saflebogoss@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sahba@abedini.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'said_cl_trois@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'said.abderrahmane-bacroix@sfr.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'said.daoudy@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'said.elfs2002@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'saidboukhalef@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'saiid_montassir12@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sait.kawthar@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sajeevan.92@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sajeevan92@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'salah_essalhi@hotmail.it', password:'mlkmlk')
puts User.last.email
User.create!(email:'salaheddinechinoi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'salama.winter.tact@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'salhiassia95@yahoo.it', password:'mlkmlk')
puts User.last.email
User.create!(email:'salim.viry@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'salimaste@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'salimoveri@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'salma-etudiant@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'salma-etudiant@outlook.fre', password:'mlkmlk')
puts User.last.email
User.create!(email:'salmihamid22@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'salome.corre@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'salome.san16@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'salomejoy@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'salvatorcik@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'salwadbouk@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'samaalimariam@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'samantha_saidi@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sami.sadfa@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'samibelhamri@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'samiimane658@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'samiraitbella38@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'samiraitbella381@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'samofarah@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'samoineleonie@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'samuella@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'samy.aouine@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sanaa.fahim0@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sanaerichez@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sandra.fricou@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sandralafargue@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sandrine.delfolie@cned.org', password:'mlkmlk')
puts User.last.email
User.create!(email:'sandrine.deroeux@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'sandrinefontaine23@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'saoussane.lefevre@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sara-sur@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sara.chenni.pro@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sara.fattori@hotmail.it', password:'mlkmlk')
puts User.last.email
User.create!(email:'sara@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'sarabensaleh1995@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sarah.hoube@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'sarah.ihab@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sarah.tammiss@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sarahm-fr@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sarahmelo91@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'saramilfort@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'saratou.souley@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sarfarouche-_-@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sarrah_hssine@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sasa_11@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sasa281@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'savane17@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sbouhayat@mail.usf.edu', password:'mlkmlk')
puts User.last.email
User.create!(email:'schlosser.nath@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'schreyer.cecile@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'schwaigere@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sd-messi@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sdeleforgeprof@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sdouhard@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'seconde8@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'segogo.petitmangin@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'selima.zoubeidi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'selmalaperle4@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'selmaphotographie@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'serafina@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'seroon12@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'servanem@netcourrier.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sghiouri@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'shaine.dlf@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'shainepavaday90@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'shararadalia@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sharoon.lolo@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'shashaforever5@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'shayane08@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'shaymae.ben.hnini@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'shihomiy@hotmail.co.jp', password:'mlkmlk')
puts User.last.email
User.create!(email:'shiyi03zhang@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sidatymouhamed1@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sidimaache@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sidney.hf@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sidneyfauquet2@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'siguo10@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sihame.ghazouani@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'siirine12benamar@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'silviaramos34@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sin.di@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sindy_chihan@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sisi_sland@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sixxclara@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sjibani@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sjonathan@fidelis-cc.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'slimanetalatzka@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sloum.bouratbine@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'smaili.diana@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'smessaoudi39@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'smokinglaslo@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'snukette@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'snyoo0120@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'soafitiar@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'soc776@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'soleiltrompeur@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'soniamadeoale@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sophie.descamps@bernardusscholen.be', password:'mlkmlk')
puts User.last.email
User.create!(email:'sophiecostes@bluewin.ch', password:'mlkmlk')
puts User.last.email
User.create!(email:'sophiemarie.vincent@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sophiemoulin20@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sophiie91@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sophmendras@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sophomilo@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sophonse@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'soraya.rachadi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'soso.594@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sosolaugt@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sosozb91380@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sossy_2@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sottavy@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sou_eh@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'souad.azdouz@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'souadzmany@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'soucci22@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'soufianearabi9@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'soufianesadek@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'souka2202@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'soukainaabdoun14@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'soumia_tata80@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'soumiya.miya@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'soupramani@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'spiritven@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'srcanak@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sruffo2@uwo.ca', password:'mlkmlk')
puts User.last.email
User.create!(email:'ssoler@collegesaintpaul.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sssespinoza@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'stdresi@cse-strasbourg.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'stephanie.grange15@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'stephanieraymond172@ymail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'steylaers@free.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'stonefaces.gr@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'subas72@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sun.infog@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sunjoo@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sunrise_du82@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'surielle91@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'suzanadacosta97@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'suzetteali@aol.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'suzul@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sydney2830@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sylvie.broussard@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sylvie.espagnacq@wanadoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sylvie.labruyere@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sylvie.tissot@numericable.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'sylvieadam01@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sylvieblanc21@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'sylvieft21@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'t021@abv.bg', password:'mlkmlk')
puts User.last.email
User.create!(email:'taghak.1999@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'taher.sah@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'tajidiasmaa@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'taliars87@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'tallacisse15399@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'tamara.3@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'tamarad94@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'tanger_wiame@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'tanguyoriach@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'taniasperduti@tiscali.it', password:'mlkmlk')
puts User.last.email
User.create!(email:'taoufik.ahkijou@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'tara.atayik@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'tbousbassi@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'tcholyamirou@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'tebai.abdelbasset@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'tengoensayo@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'teo.sanz@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'terence.lai@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'thaliahumbert.e@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'thamsna@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'the.bodo.business@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'theo.egl@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'theophile_courtier@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'theophile.b.k@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'thevaranjan.apinajaa@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'thomas_colombet@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'thomas.gloerfeld@mail.de', password:'mlkmlk')
puts User.last.email
User.create!(email:'thomaswbriggs@sbcglobal.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'tice162@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'tigrashka@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'timothy.ferrand@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'tiphainep2010@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'tissmayer@neuf.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'titi.ibti@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'titicoati@yahoo.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'titim.97@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'tm622013@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'tolassyec@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'tomato316@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'tommylo@hotmail.it', password:'mlkmlk')
puts User.last.email
User.create!(email:'toniabruch@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'tonyandre92@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'tostivintlaetitia@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'toufik.el39@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'touftouf-39@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'tpp.tt@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'tresorfrfr@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'triangle2016ben@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'trojmang@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'trystan.viaud@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'tt.c42100@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'tual66@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'uneprincessemarseillaise@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'urhm@ulb.ac.be', password:'mlkmlk')
puts User.last.email
User.create!(email:'urielnsonguissa@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'uwayohertier@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'v.carenini@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'v.eshuis@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'v.sor@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'vadrigans@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'val.dagonat@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'valen_mj@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'valentin.fakhri@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'valerie.balvert@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'valeriecellamen@me.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'valery.renault@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'valgiraldes@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'valrf@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'vanbuylaere54@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'vanessa.ladouceur@live.ca', password:'mlkmlk')
puts User.last.email
User.create!(email:'vanessalevalois@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'vdecaux@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'vdorard@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'veda_ac@icloud.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'verhillefabien@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'vero.linglain@aliceadsl.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'verobruel@yahoo.co.uk', password:'mlkmlk')
puts User.last.email
User.create!(email:'veronicarachelemoreno@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'vfrancais15@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'victor.blotiere@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'victoriaattal@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'victorine.marquant@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'vidulan06@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'vilina_ivanova92@abv.bg', password:'mlkmlk')
puts User.last.email
User.create!(email:'vincal@club-internet.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'vince7887@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'vincent.renaud@noos.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'vinip@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'violettechomette@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'virgini_t@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'virginie.famin@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'virginie.fourchet@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'virginie.marchand@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'virginie.ricardo@orange.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'vlerickgregory@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'vravasse@gmmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'vtetienne@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'w.benabicha@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'wadia-elkhalladi@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'wahbihouda@outlook.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'walidbouraoui40@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'walidutd@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'wascoch_dosh@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'wattaissata@aoutlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'wawan69@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'wellington.giovanni@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'whiddon.julie@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'wilfried.grare@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'willy.krebs@hotmail.ch', password:'mlkmlk')
puts User.last.email
User.create!(email:'winky8300@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'wissalkdl@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'wissobenfo64@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'www.lucie97351@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'wyame123@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'xbox-martin@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'xheneta.imeri@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'xrysakal22@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'xx-momo@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'y.iizuka.0407@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'yacin.hassan@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'yacinemeradji@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'yacoupidriss@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'yahya.zeriah@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'yanestah@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'yanisleyazbek@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'yankd1@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'yanngombs@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'yannyvec@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'yaowanart@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'yasminet98@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'yaz69@aliceadsl.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'yazid.net@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'yesyes91380@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'yharold8@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'ynouha@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'yoann.fernandez2@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'yolahaussois@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'yona.haim@live.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'yoshi_14@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'youk.tymak@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'younees.gh@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'younes-forme@outlook.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'younes.latifi2013@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'younes1996.emy.alyse@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'youngtaylor157@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'youssef2500@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'youssof123maryam@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'youssof123maryam@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'youssousene2@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'yoyo.-9732@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'ysn1945@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'yves.vancayzeele@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'z.lea44@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'za.zizou@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'zaffiniv@teletu.it', password:'mlkmlk')
puts User.last.email
User.create!(email:'zahisouhail@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'zahrat_arrabia@hotmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'zaierkheireddine@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'zakariabenchelih@hotmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'zakariademb@laposte.net', password:'mlkmlk')
puts User.last.email
User.create!(email:'zazamari6@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'zchapot@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'zeblai@live.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'zedofuska93700@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'zelal.sidal14@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'zelieleruste@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'zemerauda.ab@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'zennadinesrine@yahoo.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'zeriabzarban@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'zerroukifethya1976@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'zhellodie8@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'zikodinho60@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'zoe.ztanguy@gmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'zora18thi@gmail.fr', password:'mlkmlk')
puts User.last.email
User.create!(email:'zouhairboit100@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'zouhir.epc@gmail.com', password:'mlkmlk')
puts User.last.email
User.create!(email:'zyzaloxy@gmail.com', password:'mlkmlk')
puts User.last.email
