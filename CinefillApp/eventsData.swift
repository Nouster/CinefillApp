//
//  eventsData.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 20/06/2022.
//
import SwiftUI


struct Events : Identifiable{
    var id = UUID()
    var eventsName: String
    var eventsPictures: String
    var eventsDescription: String
    var eventsDateStart: String?
    var eventsDateEnd : String?
    var eventsLocation: String
    var enventsAdress : String?
    var eventsCategorie : String
}


var eventsPreviewArray = [
    
    Events(eventsName: "Elvis", eventsPictures: "elvis", eventsDescription: "La vie et l'oeuvre musicale d'Elvis Presley à travers le prisme de ses rapports complexes avec son mystérieux manager, le colonel Tom Parker. Le film explorera leurs relations sur une vingtaine d'années, de l'ascension du chanteur à son statut de star inégalé, sur fond de bouleversements culturels et de la découverte par l'Amérique de la fin de l'innocence.", eventsDateStart: nil, eventsDateEnd: nil, eventsLocation: "France",enventsAdress: nil, eventsCategorie: "Avant-Première"),
    
    Events(eventsName: "Printemps du cinéma", eventsPictures: "printempsducinema", eventsDescription: "Un tarif exceptionnel pour l'ensemble des spectateurs : 4€ la séance dans tous les cinéma participants. Une belle occasion de profiter pleinement de toute la richesse de la programmation : tous les films sont concernés, qu'il s'agisse de l'ensemble des nouveautés ou des films encore à l'affiche.", eventsDateStart: "09/05/2022", eventsDateEnd: "29/05/2022", eventsLocation: "Toulouse", enventsAdress: nil, eventsCategorie: "Promotion"),
    
    Events(eventsName: "Cinéma sous les étoiles: Le Roi Lion", eventsPictures: "souslesétoilesleroilion", eventsDescription: "Pour cette première séance de Ciné sous les étoiles, découvrez en famille le film **Le roi lion,** un film de Jon Favreau.", eventsDateStart: "12/07/2022", eventsDateEnd: "12/07/2022", eventsLocation: "Toulouse",enventsAdress: "Parc Duroch - Rue Gilet, 31770 Colomiers 31770 Colomiers", eventsCategorie: "Projection"),
    
    Events(eventsName: "Up' Colomiers, c'est parti !", eventsPictures: "colomiers", eventsDescription: "Conférences, échanges, ateliers linguistiques, culinaires, ciné-débat... Le programme sera riche en rencontres et en connaissances. Autant d'occasions propices aux échanges et au développement du lien social.", eventsDateStart: "19/03/2022", eventsDateEnd: "24/06/2022", eventsLocation: "Toulouse",enventsAdress: "4 Pl. Alex Raymond, 31770 Colomiers", eventsCategorie: "Conference"),
    
    Events(eventsName: "Première Vague", eventsPictures: "premirevague", eventsDescription: "L'équipe du Comœdia vous propose de découvrir en avant-première une sélection de films cannois présentés cette année dans différentes compétitions du festival.", eventsDateStart: "15/06/2022", eventsDateEnd: "21/06/2022", eventsLocation: "Lyon",enventsAdress: nil, eventsCategorie: "Festival"),
    
    Events(eventsName: "Le Chameau et le meunier", eventsPictures: "Lechameauetlemeunier", eventsDescription: "Un meunier fait travailler un chameau pour moudre le grain. Mais un jour, le chameau tombe malade et le meunier le remplace par un engin à moteur. Cette solution semble parfaite mais derrière la pudeur apparente des personnages, chaque se rend compte de l'attachement qu'il a pour l'autre. Programme de 3 courts métrages : Le Robot et le fermier (Restauré) Les Oiseaux blancs (Restauré)  Le Chameau et le meunier (15 minutes) " , eventsDateStart: "01/07/2022", eventsDateEnd: nil, eventsLocation: "Lyon",enventsAdress: nil, eventsCategorie: "Projection"),
    
    Events(eventsName: "Yuku et la fleur de l'Himalaya", eventsPictures: "yukuetlafleurdelhimalaya", eventsDescription: "En haut des plus hautes montagnes de la terre vit une plante qui se nourrit de la plus parfaite lumière du soleil. Elle s'appelle… la fleur de l'Himalaya. Yuku quitte sa famille pour partir à la recherche de cette fleur à la lumière éternelle. Elle veut l'offrir à sa grand-mère qui a annoncé qu'elle devra bientôt partir avec la petite taupe aveugle dans les méandres de la terre. Mais pour la trouver, il y a un long voyage à parcourir, semé d'obstacles. Il faut traverser le terrible domaine des rats d'égouts sous le château, la prairie aux corbeaux, cruels et voraces, la forêt enchantée où l'on se perd. Et, surtout, le petit pont de la peur, qui est gardé par le loup ! Mais sur son parcours, grâce à sa musique et à ses chansons, Yuku va se faire beaucoup d'amis. Ils sont le bien le plus précieux pour réussir l'aventure de la vie.", eventsDateStart: "28/08/2022", eventsDateEnd: nil, eventsLocation: "Lyon",enventsAdress: nil, eventsCategorie: "Avant-Première"),
    
    Events(eventsName: "L’Été en cinémascope 2022", eventsPictures: "etecinemascope", eventsDescription: "endez-vous estival de l'Institut Lumière depuis plus de 20 ans, les projections en plein air sont l’occasion, dès la nuit tombée, de découvrir un film sur grand écran : classiques, comédies, polars… " , eventsDateStart: "28/06/2022", eventsDateEnd: "30/08/2022", eventsLocation: "Lyon" ,enventsAdress: "Place Ambroise Courtois, Lyon 8e", eventsCategorie: "Festival")
    
]

