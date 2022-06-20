//
//  eventsData.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 20/06/2022.
//

import Foundation

struct Events : Identifiable{
    var id = UUID()
    var eventsName: String
    var eventsPictures: String
    var eventsDescription: String
    var eventsDateStart: String
    var eventsDateEnd : String
    var eventsLocation: String
}

var eventsArray: [Events] = [
    
    Events (eventsName: "Printemps du cinéma", eventsPictures: "printempsducinema", eventsDescription: "Le Printemps du Cinéma revient du dimanche 20 au mardi 22 mars 2022 ! Pendant trois jours, un tarif exceptionnel pour l'ensemble des spectateurs : 4€ la séance dans tous les cinéma participants. Une belle occasion de profiter pleinement de toute la richesse de la programmation : tous les films sont concernés, qu'il s'agisse de l'ensemble des nouveautés ou des films encore à l'affiche.", eventsDateStart: "20/03/2022", eventsDateEnd: "22/03/2022", eventsLocation: "France"),
    
    Events (eventsName: "Cinéma sous les étoiles", eventsPictures: "souslesetoiles", eventsDescription: "Découvrez en famille, le cinéma sous les étoiles au Parc De La Tête D'Or. À partir de 20h. \nMia a onze ans quand elle noue une relation hors du commun avec Charlie, un lion blanc né dans la ferme de félins de ses parents en Afrique du Sud. Tous deux grandissent comme frère et sœur et deviennent vite inséparables. Trois ans plus tard, Charlie est devenu un lion imposant. Mia découvre alors le secret que cache la ferme : son père vend les lions à des « chasseurs de trophées ». Mia n’aura désormais qu’une obsession : sauver Charlie, à tout prix.", eventsDateStart: "15/07/2022", eventsDateEnd: "15/07/2022", eventsLocation: "Parc De La Tête D'Or"),
    
    Events (eventsName: "Up' Colomiers, c'est parti !", eventsPictures: "colombier", eventsDescription: "Conférences, échanges, ateliers linguistiques, culinaires, ciné-débat... Le programme sera riche en rencontres et en connaissances. Autant d'occasions propices aux échanges et au développement du lien social.", eventsDateStart: "03/07/2022", eventsDateEnd: "05/07/2022", eventsLocation: "Mairie de Toulouse"),
    
    Events (eventsName: <#T##String#>, eventsPictures: <#T##String#>, eventsDescription: <#T##String#>, eventsDateStart: <#T##String#>, eventsDateEnd: <#T##String#>, eventsLocation: <#T##String#>)
    

]
