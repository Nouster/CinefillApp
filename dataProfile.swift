//
//  dataProfile.swift
//  CinefillApp
//
//  Created by Apprenant 20 on 20/06/2022.
//

import Foundation

struct dataProfile: Identifiable{
        var id = UUID()
        var userPseudo : String
        var userEmail : String
        var userPassword: String
        var userPicture : String
        var userSubscriptions: [String]
        var userEvents: [String]
        var userLocation : String
}
