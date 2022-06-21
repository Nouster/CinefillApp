//
//  dataProfile.swift
//  CinefillApp
//
//  Created by Apprenant 20 on 20/06/2022.
//

import Foundation

struct DataProfile: Identifiable{
        var id = UUID()
        var userPseudo : String
        var userEmail : String
        var userPassword: String
        var userPicture : String
        var userSubscriptions: [String]
        var userEvents: [String]
        var userLocation : String
}
var profileArray = [DataProfile(userPseudo : "Julie", userEmail : "julie.salvo@gmail.com", userPassword : "juliesalvo", userPicture : "picture", userSubscriptions : ["Pass UGC"], userEvents : ["Like"], userLocation : "Toulouse")]
