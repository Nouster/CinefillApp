import Foundation
import SwiftUI

struct Seances: Identifiable{
    var id = UUID()
    var seanceLocation: String
    var seanceMovie : String
    var seanceLargePicture : String
    var seanceSmallPicture : String
    var seanceTime : String
    var seanceDate: String
    var seancePrice : String
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
    Seances(seanceLocation: "UGC Ciné Cité Internationale", seanceMovie: "Decision to leave",seanceLargePicture: "movieTwoBig" ,seanceSmallPicture: "movieTwoMed", seanceTime: "10h00", seanceDate: "21/06/2022", seancePrice: "5.90", seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
//    Seances(seanceLocation: "UGC Ciné Cité Internationale", seanceMovie: "Decision to leave",seancePicture: "movieTwoMed", seanceTime: "14h", seanceDate: "21/06/2022", seancePrice: 7.90, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
    Seances(seanceLocation: "UGC Ciné Cité Internationale", seanceMovie: "Mastemah",seanceLargePicture: "movieSixBig",seanceSmallPicture: "movieSixMed",seanceTime: "18h30", seanceDate: "21/06/2022", seancePrice: "6.90", seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
//    Seances(seanceLocation: "UGC Ciné Cité Internationale", seanceMovie: "Mastemah",seancePicture: "movieSixMed", seanceTime: "19h30", seanceDate: "28/06/2022", seancePrice: 9.00, seanceLanguageVersion: "VOSTFR",seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
//
    Seances(seanceLocation: "UGC Ciné Cité Internationale", seanceMovie: "La traversée",seanceLargePicture: "movieFourBig",seanceSmallPicture: "movieFourMed", seanceTime: "16h00", seanceDate: "29/06/2022", seancePrice: "8.00", seanceLanguageVersion: "VF",seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
//    Seances(seanceLocation: "UGC Ciné Cité Internationale", seanceMovie: "La traversée",seancePicture: "movieFourMed", seanceTime: "15h", seanceDate: "29/06/2022", seancePrice: 12.00, seanceLanguageVersion: "VF",seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),


    
    
    
    //  Gaumont Wilson
    Seances(seanceLocation: "Gaumont Wilson", seanceMovie: "Goodnight Soldier",seanceLargePicture: "movieFiveBig",seanceSmallPicture: "movieFiveSmall", seanceTime: "20h30", seanceDate: "21/06/2022", seancePrice: "10.10", seanceLanguageVersion: "VF", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
//    Seances(seanceLocation: "Gaumont Wilson", seanceMovie: "Goodnight Soldier",seancePicture: "movieFiveSmall", seanceTime: "13h", seanceDate: "30/06/2022", seancePrice: 6.50, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
    Seances(seanceLocation: "Gaumont Wilson", seanceMovie: "Irréductible",seanceLargePicture: "movieOneBig",seanceSmallPicture: "movieOneSmall", seanceTime: "13h30", seanceDate: "30/06/2022", seancePrice: "12.50", seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
//    Seances(seanceLocation: "Gaumont Wilson", seanceMovie: "Irréductible",seancePicture: "movieOneSmall", seanceTime: "17h", seanceDate: "30/06/2022", seancePrice: 7.00, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
    Seances(seanceLocation: "Gaumont Wilson", seanceMovie: "Arthur, malédiction",seanceLargePicture: "movieEightBIg",seanceSmallPicture: "movieEightMed", seanceTime: "10h30", seanceDate: "30/06/2022", seancePrice: "14.50", seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
    
//    Seances(seanceLocation: "Gaumont Wilson", seanceMovie: "Arthur, malédiction",seancePicture: "movieEightMed", seanceTime: "19h", seanceDate: "30/06/2022", seancePrice: 11.50, seanceLanguageVersion: "VOSTFR", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]),
//
    
    
    
    
    

    
]
}

