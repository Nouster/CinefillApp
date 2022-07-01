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
        var seanceAccessibilityInfos : [AccesibilityInfos]
}

// Modification de la struct Seances pour avoir le bon formatage de seanceAccessibilityInfos
struct AccesibilityInfos : Identifiable {
    var id = UUID()
    var name : String
    var isAvailable : Bool
}

class SeanceClass: ObservableObject {
@Published   var seancesArray: [Seances] = [
    
    
    // Pathé Bellecours
    Seances(seanceLocation: "UGC Ciné Cité Internationale", seanceMovie: "Decision to leave", seanceTime: "10h", seanceDate: "21/06/2022", seancePrice: 5.90, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
    Seances(seanceLocation: "UGC Ciné Cité Internationale", seanceMovie: "Decision to leave", seanceTime: "14h", seanceDate: "21/06/2022", seancePrice: 7.90, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
    Seances(seanceLocation: "UGC Ciné Cité Internationale", seanceMovie: "Jurassic World", seanceTime: "18h", seanceDate: "21/06/2022", seancePrice: 13.90, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
    Seances(seanceLocation: "UGC Ciné Cité Internationale", seanceMovie: "Jurassic World : Le Monde D'Après", seanceTime: "19h30", seanceDate: "28/06/2022", seancePrice: 9.00, seanceLanguageVersion: "VOSTFR",seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
    Seances(seanceLocation: "UGC Ciné Cité Internationale", seanceMovie: "Champagne", seanceTime: "16h", seanceDate: "29/06/2022", seancePrice: 14.90, seanceLanguageVersion: "VF",seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
    Seances(seanceLocation: "UGC Ciné Cité Internationale", seanceMovie: "Champagne", seanceTime: "15h", seanceDate: "29/06/2022", seancePrice: 12.00, seanceLanguageVersion: "VF",seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),


    
    
    
    //  Gaumont Wilson
    Seances(seanceLocation: "Gaumont Wilson", seanceMovie: "Elvis", seanceTime: "20h", seanceDate: "21/06/2022", seancePrice: 8.10, seanceLanguageVersion: "VF", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
    Seances(seanceLocation: "Gaumont Wilson", seanceMovie: "Elvis", seanceTime: "13h", seanceDate: "30/06/2022", seancePrice: 6.50, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
    Seances(seanceLocation: "Gaumont Wilson", seanceMovie: "Irréductible", seanceTime: "13h", seanceDate: "30/06/2022", seancePrice: 16.50, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
    Seances(seanceLocation: "Gaumont Wilson", seanceMovie: "Irréductible", seanceTime: "17h", seanceDate: "30/06/2022", seancePrice: 7.00, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
    Seances(seanceLocation: "Gaumont Wilson", seanceMovie: "Arthur, malédiction", seanceTime: "10h", seanceDate: "30/06/2022", seancePrice: 8.50, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
    Seances(seanceLocation: "Gaumont Wilson", seanceMovie: "Arthur, malédiction", seanceTime: "19h", seanceDate: "30/06/2022", seancePrice: 11.50, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
    
    
    
    
    

    
]
}

