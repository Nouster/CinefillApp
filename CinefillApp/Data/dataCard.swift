//
//  File.swift
//  CinefillApp
//
//  Created by Apprenant 15 on 27/06/2022.
//

import Foundation
import SwiftUI

struct Carte: Identifiable {
   
    let Image: String
    let image2 : String
    let information : String
    let text : String
   
    let id = UUID()
}

let cartes = [

    Carte(Image: "carte 1",image2: "code barre",information: "il vous reste 365 jours pour bénéficier de votre carte pass cinéma", text: "UCG gaumont "),
         Carte(Image: "carte 2", image2: "code barre", information: "il vous reste 20 jours pour visionner les films dans les ciné pass",text: "Ciné pass"),
    Carte(Image: "carte 3", image2: "code barre", information: "votre abonnement est terminé pour bénéficier a nouveau rendez-vous sur le site le_capitole.fr ",text: "le capitole "),
    Carte(Image: "carte 4",image2: "code barre",information: "il vous reste 3 mois a partager avec votre famille  ", text: "UCG gaumont "),
         Carte(Image: "carte 5", image2: "code barre", information: "votre aboonement fini dans 3 semaines",text: "Ciné pass"),
    Carte(Image: "carte 6",image2: "code barre",information: "vous beneficiez de 10 place de cinéma", text: "UCG gaumont "),
         Carte(Image: "carte 7", image2: "code barre", information: "pour chaque film vous bénéficiez d'une collation",text: "Ciné pass")


]
