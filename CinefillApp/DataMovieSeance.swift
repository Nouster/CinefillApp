import Foundation
import SwiftUI

struct Seances: Identifiable{
    var id = UUID()
    var seanceLocation: String
    var seanceMovie : String
        var seanceTime : String
        var seanceDate: String
        var seancePrice : Double
        var seanceLanguageVersion : String
        var seanceAccessibilityInfos : [String]
}


var seancesArray: [Seances] = [
    
    Seances(seanceLocation: "Cinémathèque De Toulousel", seanceMovie: "Top Gun : Maverick", seanceTime: "18h", seanceDate: "21/06/2022", seancePrice: 7.90, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: ["Sous-Titres Sourds et Malentendants": true, "Personnes à mobilité réduite": true]),
    
    Seances(seanceLocation: "Gaumont Wilson", seanceMovie: "Top Gun : Maverick", seanceTime: "20h", seanceDate: "21/06/2022", seancePrice: 8.10, seanceLanguageVersion: "VF", seanceAccessibilityInfos: ["Sous-Titres Sourds et Malentendants": false, "Personnes à mobilité réduite": true]),
    
    Seances(seanceLocation: "Gaumont Wilson", seanceMovie: "Elvis", seanceTime: "13h", seanceDate: "30/06/2022", seancePrice: 6.50, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: ["Sous-Titres Sourds et Malentendants": false, "Personnes à mobilité réduite": true]),
    
    Seances(seanceLocation: "UGC Toulouse Montaudran", seanceMovie: "Jurassic World : Le Monde D'Après", seanceTime: "19h30", seanceDate: "28/06/2022", seancePrice: 7.90, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: ["Sous-Titre Sourds et Malentendants": true, "Personnes à mobilié réduite": true]),
    
    Seances(seanceLocation: "UGC Toulouse Montaudran", seanceMovie: "Champagne", seanceTime: "16h", seanceDate: "29/06/2022", seancePrice: 7.90, seanceLanguageVersion: "VF", seanceAccessibilityInfos: ["Sous-Titres Sourds et Malentendants": false, "Personnes à mobilité réduite": true ]),
    
    Seances(seanceLocation: "Cinémathèque De Toulouse", seanceMovie: "Jurassic World : Le Monde D'Après", seanceTime: "10h", seanceDate: "28/06/2022", seancePrice: 6.20, seanceLanguageVersion: "VF", seanceAccessibilityInfos: ["Sous-Titres Sourds et Malentendants": true, "Personnes à mobilité réduite": true]),
    
    Seances(seanceLocation: "Pathé Bellecours", seanceMovie: "Irréductible", seanceTime: "13h30", seanceDate: "25/06/2022", seancePrice: 9.75, seanceLanguageVersion: "VF", seanceAccessibilityInfos: ["Sous-Titres Sourds et Malentendants": true, "Personnes à mobilité réduite": true]),
    Seances(seanceLocation: "Cinéma Comoedia", seanceMovie: "Decision To Leave", seanceTime: "20h30", seanceDate: "22/06/2022", seancePrice: 9.85, seanceLanguageVersion: "VOSFR", seanceAccessibilityInfos: ["Sous-Titres Sourds et Malentendants": false, "Personnes à mobilité réduite": false]),
    
    Seances(seanceLocation: "Cinema Comoedia", seanceMovie: "En Roue Libre", seanceTime: "16h30", seanceDate: "30/06/2022", seancePrice: 8.10, seanceLanguageVersion: "VF", seanceAccessibilityInfos: ["Sous-Titres Sourds et Malentendants": false, "Peronnes à mobilité réduite": false]),
    
    Seances(seanceLocation: "UGC Part-Dieu", seanceMovie: "La Traversée", seanceTime: "14h30", seanceDate: "30/06/2022", seancePrice: 8.90, seanceLanguageVersion: "VF", seanceAccessibilityInfos: ["Sous-Titres Sourds et Malentendants": true, "Personnes à mobilité réduite": true]),
    
    Seances(seanceLocation: "UGC Montparnasse", seanceMovie: "Goodnight Soldier", seanceTime: "15h", seanceDate: "28/06/2022", seancePrice: 8.90, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: ["Sous-Titres Sourds et Malentendants": true, "Personnes à mobilité réduite": true]),
    
    Seances(seanceLocation: "UGC MontParnasse", seanceMovie: "Mastemah", seanceTime: "14h30", seanceDate: "28/06/2022", seancePrice: 6.50, seanceLanguageVersion: "VF", seanceAccessibilityInfos: ["Sous-Titres Sourds et Malentendants": true, "Personnes à mobilité réduite": true]),
    
    Seances(seanceLocation: "UGC Ciné Cité Les Halles", seanceMovie: "Cahiers noirs", seanceTime: "21h", seanceDate: "23/06/2022", seancePrice: 9.90, seanceLanguageVersion: "VF", seanceAccessibilityInfos: ["Sous-Titres Sourds et Malentendants": true, "Personnes à mobilité réduite": true]),
    
    Seances(seanceLocation: "Cinémathèque De Toulouse", seanceMovie: "Arthur, malédiction", seanceTime: "20h", seanceDate: "28/06/2022", seancePrice: 9.25, seanceLanguageVersion: "VF", seanceAccessibilityInfos: ["Sous-Titres Sourds et Malentendants": false, "Personnes à mobilité réduite": true])
]
