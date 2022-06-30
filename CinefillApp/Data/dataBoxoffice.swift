//
//  dataBoxoffice.swift
//  CinefillApp
//
//  Created by Apprenant 06 on 29/06/2022.
//

import Foundation

// Modification de la struct Movies -> Chaque film possède un tableau de séances
struct Movies : Identifiable {
    var id = UUID()
    let movieTitle : String
    let movieActor : [String]
    let posterBig : String
    let posterMed : String
    let posterSmall : String // ou utiliser un modifier sur une seule image
    let movieSynopsis : String
    let movieDateOfRelease : String
    let movieCategory : [MovieCategory]
    let movieLong : String // Durée du film en Heure H minutes ?
    let movieCountry : [String]
    let movieDirector : [String]
    let movieProduction : [String]
    let movieClassification : MovieClassification
    
  //var movieTrailer : UTType (Video dans le asset ou lien youtube)
    // var movieDiffusion : [String] (-12ans, VOSTFR, etc..)
    
    // faire une méthode qui compare les prix des séances
    
}

enum MovieCategory {
    case Comédie,Romance, Drame, Thriller, Policier, Épouvante, Horreur, Documentaire, Animation, Historique, Aventure, Fantastique, Guerre, Western, ScienceFiction
    
}

enum MovieClassification{
    case TousPublics, Interdit12, Interdit16, Interdit18X, Interdit18NonX
    
}

class movieClass: ObservableObject {
    
@Published var moviesArray : [Movies] = [

    Movies(movieTitle: "Irréductible", movieActor: ["Jérôme Commandeur","Pascale Arbillot","Estéban","Christian Clavier","Malik Bentalha","Laetitia Dosch","Gérard Darmon","Michel Crémadès","Anne-Sophie Lapix","Valérie Lemercier","Gérard Depardieu","Nicole Calfan","Eva Darlan","Jean-Marie Winling","Karina Beuthe","Hubert Myon","Karim Wallet"], posterBig: "movieOneBig", posterMed: "movieOneMed", posterSmall: "movieOneSmall", movieSynopsis: "Chargée d'écrémer la Fonction publique, une inspectrice ministérielle un peu trop zélée va utiliser tous les moyens’ en son pouvoir... Mais Vincent Peltier, paisible fonctionnaire aux Eaux et Forêts à Limoges, n'est pas du tout décidé à abandonner son travail, garanti à vie ! La guerre des nerfs ne fait que commencer quand elle le mute dans les pires recoins de France, jusqu'au Pôle Nord..", movieDateOfRelease: "29/06/2022", movieCategory: [.Comédie], movieLong: "1h25m", movieCountry: ["France"], movieDirector: ["Jérôme Commandeur"], movieProduction: ["Jérôme Commandeur, Checco Zalone"], movieClassification: .TousPublics ),
    Movies(movieTitle: "Decision to leave", movieActor: ["Tang Wei","Park Hae-il","Ko Kyeong-Pyo","Lee Jyung-Hyun","Jeung Hadam","Jung Yi-Seo","Park Yong Woo","Kim Shing Young","Go min -si","Park Jung Min","Teo Yoo","Seo Hyun Woo"], posterBig: "movieTwoBig", posterMed: "movieTwoMed", posterSmall: "movieTwoSmall", movieSynopsis: "Hae-Joon, détective chevronné, enquête sur la mort suspecte d'un homme survenue au sommet d'une montagne. Bientôt, il commence à soupçonner Sore, la femme du défunt, tout en étant déstabilisé par son attirance pour elle.", movieDateOfRelease: "29/06/20022", movieCategory: [.Romance, .Drame, .Thriller, .Policier], movieLong: "2h18m", movieCountry: ["Corée du Sud"], movieDirector: ["Chan-Wook Park"], movieProduction: ["Chan-Wook Park, Jeong Seo-kyeong"], movieClassification: .TousPublics ),
    Movies(movieTitle: "En roue libre", movieActor: ["Marina Foïs","Benjamin Voisin","Jean charles Clichet","Albert Deply"], posterBig: "movieThreeBig", posterMed: "movieThreeMed", posterSmall: "movieThreeSmall", movieSynopsis: "Ethan a 16 ans, il est devenu paralysé à l'âge de 11 ans, suite à un accident de plongeoir. Il nous raconte son histoire, les problèmes pour se déplacer en fauteuil dans les rues, les accès difficiles ou impossibles. Avec son copain Ludi, surnommé Buster, de 3 ans son aîné, il passe des moments heureux.", movieDateOfRelease: "29/06/2022", movieCategory: [.Comédie], movieLong: "1h25m", movieCountry: ["France"], movieDirector: ["Didier Barcelo"], movieProduction: ["Didier Barcelo, Marie Deshaires"], movieClassification: .TousPublics),
    Movies(movieTitle: "La traversée", movieActor: ["Alban Ivanov" ,"Lucien Jean-Baptiste","Audrey Pirault","Moncef Farfar","Thilla Thiam","Lucie Charles-Alfred","Mamari Diarra","Enzo Lemartinet"], posterBig: "movieFourBig", posterMed: "movieFourMed", posterSmall: "movieFourSmall", movieSynopsis: "Éducateurs de quartier, Alex et Stéphanie emmènent cinq ados déscolarisés pour faire une traversée de la Méditerranée et les réinsérer par les valeurs de la mer. Mais arrivés au port, ils tombent sur Riton, leur skippeur, un ancien flic de la BAC, qui a tout quitté pour fuir la banlieue. Ces jeunes, c'est son pire cauchemar. Contraints, ils se retrouvent tous embarqués sur le même bateau pour une virée en mer de quinze jours. Une chose est sûre, après cette Traversée, ils n'auront plus tout à fait la même vision du monde...Éducateurs de quartier, Alex et Stéphanie emmènent cinq ados déscolarisés pour faire une traversée de la Méditerranée et les réinsérer par les valeurs de la mer. Mais arrivés au port, ils tombent sur Riton, leur skippeur, un ancien flic de la BAC, qui a tout quitté pour fuir la banlieue. Ces jeunes, c'est son pire cauchemar. Contraints, ils se retrouvent tous embarqués sur le même bateau pour une virée en mer de quinze jours. Une chose est sûre, après cette Traversée, ils n'auront plus tout à fait la même vision du monde...", movieDateOfRelease: "29/06/2022", movieCategory: [.Comédie], movieLong: "1h45m", movieCountry: ["France"], movieDirector: ["Varante Soudjian"], movieProduction: ["Varante Soudjian, Thomas Pone"], movieClassification: .TousPublics),
    Movies(movieTitle: "Goodnight Soldier", movieActor: ["Galyar Nerway","Dilin Doger","Alend Hazim","Barzan Shaswar","Bekir Ma`rof","Shadyana","Moradi","Lila Gürmen"], posterBig: "movieFiveBig", posterMed: "movieFiveMed", posterSmall: "movieFiveSmall", movieSynopsis: "Ziné et Avdal, follement amoureux, décident de se marier malgré l'hostilité de leurs familles qui se vouent une haine ancestrale. Blessé sur le champ de bataille, Avdal ne supporte pas son état et remet en cause son mariage.", movieDateOfRelease: "09/06/2022", movieCategory: [.Drame], movieLong: "1h37m", movieCountry: ["Irak, Kurdistan"], movieDirector: ["Hiner Saleem"], movieProduction: ["Hiner Saleem, Véronique Wüthrich"], movieClassification: .TousPublics),
    Movies(movieTitle: "Mastemah", movieActor: ["Camille Razat","Olivier Barthelemy","Féodor Atkine","Tibo Vandenborre","Dylan Robert","Bruno Debrandt","Anaël Snoek"], posterBig: "movieSixBig", posterMed: "movieSixMed", posterSmall: "movieSixSmall", movieSynopsis: "Après la mort brutale d’un proche lors d’une séance d’hypnose qu’elle animait, Louise, jeune psychiatre tente de se reconstruire en s’installant dans un petit village de l’Aubrac. L’arrivée d’un nouveau patient au comportement étrange va la plonger dans une spirale infernale. Sa vie et celles des autres vont devenir un véritable enfer.", movieDateOfRelease: "29/06/2022", movieCategory: [.Épouvante,.Horreur,.Thriller], movieLong: "1h40m", movieCountry: ["France, Belgique"], movieDirector: ["Didier D. Daarwin"], movieProduction: ["Didier D. Daarwin, Thierry Aflalou"], movieClassification: .Interdit12),
    Movies(movieTitle: "Cahiers Noirs I - Viviane", movieActor: ["Ronit Elkabetz","Shlomi Elkabetz","Eli Elkabetz","Miriam Elkabetz","Simon Abkarian","Menashe Noy","Sasson Gabai"], posterBig: "movieSevenBig", posterMed: "movieSevenMed", posterSmall: "movieSevenSmall", movieSynopsis: "Dans un taxi parisien, un homme apprend, par un voyant marocain, que sa sœur est sur le point de mourir. Pour tenter de déjouer la prédiction, le frère entreprend alors un voyage fictif entre le Maroc, Israël et Paris. A partir d’extraits de la trilogie écrite et réalisée par Ronit et Shlomi Elkabetz et d’archives familiales, Cahiers Noirs - Viviane et Cahiers Noirs - Ronit nous invitent dans l’intimité d’une famille judéo-arabe. Une histoire imaginaire où le frère et la sœur revisitent le passé et le présent pour défier un avenir implacable. Mais l’ombre de la prophétie plane toujours, dans la vie comme au cinéma.", movieDateOfRelease: "29/06/2022", movieCategory: [.Documentaire], movieLong: "1h48m", movieCountry: ["Israël"], movieDirector: ["Shlomi Elkabetz"], movieProduction: ["Shlomi Elkabetz"], movieClassification: .TousPublics ),
    Movies(movieTitle: "Arthur,malédiction", movieActor: ["Vadim Agid","Lola Andreoni","Mathieu Berger","Ludovic Berthillot","Thalia Besson","Marceau Ebersolt","Mikaël Halimi","Yann Mendy"], posterBig: "movieEightBIg", posterMed: "movieEightMed", posterSmall: "movieEightSmall", movieSynopsis: "Alex est un fan des films Arthur et les Minimoys depuis qu'il est enfant. Pour son anniversaire, ses meilleurs amis lui font la surprise de l'emmener dans la maison abandonnée où le film a été tourné. Aucun d’eux ne se doute alors qu’ils se dirigent vers un piège machiavélique et mortel", movieDateOfRelease: "29/06/2022", movieCategory: [.Animation, .Horreur], movieLong: "1h35m", movieCountry: ["France"], movieDirector: ["Barthélemy Grossmann"], movieProduction: ["Luc Besson"], movieClassification: .Interdit12)

]

}
