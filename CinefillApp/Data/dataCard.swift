//
//  File.swift
//  CinefillApp
//
//  Created by Apprenant 15 on 27/06/2022.
//

import Foundation
import SwiftUI

struct Carte: Identifiable {
   
    let cardName: String
    let cardImage : String
    let cardTime : Int
   
    let id = UUID()
}

var cartes = [

    Carte(cardName: "UGC illimité", cardImage: "ugc", cardTime: 40),
    Carte(cardName: "Pathe Gaumont", cardImage: "gaumont", cardTime: 29)

]
