//
//  dataSeances.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 21/06/2022.
//

import Foundation

struct Seances: Identifiable {
    
    var id = UUID()
    var seanceLocation: String
    var seanceMovie : String
    var seanceTime : String
    var seanceDate: String
    var seancePrice : Double
    var seanceLanguageVersion : String
    var seanceAccessibilityInfos : [String: Bool]
    
}

var seancesArray: [Seances] = [
    
    Seances(seanceLocation: "Cinéma Le Grand Central", seanceMovie: "Top Gun : Maverick", seanceTime: "18h", seanceDate: "21/06/2022", seancePrice: 7.90, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: ["Sous-Titre Sourds et Malentendants": true, "Personnes à mobilité réduite": true]),
    
    Seances(seanceLocation: "Gaumont Wilson", seanceMovie: "Top Gun : Maverick", seanceTime: "20h", seanceDate: "21/06/2022", seancePrice: 8.10, seanceLanguageVersion: "VF", seanceAccessibilityInfos: ["Sous-Titre Sourds et Malentendants": false, "Personnes à mobilité réduite": true]),
    
    Seances(seanceLocation: "Gaumont Wilson", seanceMovie: "Elvis", seanceTime: "13h", seanceDate: "30/06/2022", seancePrice: 6.50, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: ["Sous-Titre Sourds et Malentendants": false, "Personnes à mobilité réduite": true]),
    
    Seances(seanceLocation: "UGC Toulouse Montaudran", seanceMovie: "Jurassic World : Le Monde D'Après", seanceTime: "19h30", seanceDate: "28/06/2022", seancePrice: 7.90, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: ["Sous-Titre Sourds et Malentendants": true, "Personnes à mobilié réduite": true]),
    
    Seances(seanceLocation: "UGC Toulouse Montaudran", seanceMovie: "Champagne", seanceTime: "16h", seanceDate: "29/06/2022", seancePrice: 7.90, seanceLanguageVersion: "VF", seanceAccessibilityInfos: ["Sous-Titre Sourds et Malentendants": false, "Personnes à mobilité réduite": true ]),
    
    Seances(seanceLocation: "Cinéma Le Grand Central", seanceMovie: "Jurassic World : Le Monde D'Après", seanceTime: "10h", seanceDate: "28/06/2022", seancePrice: 6.20, seanceLanguageVersion: "VF", seanceAccessibilityInfos: ["Sous-Titre Sourds et Malentendants": true, "Personnes à mobilité réduite": true])

]
