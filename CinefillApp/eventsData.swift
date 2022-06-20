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
    var eventsPictures : String
    var eventsDescription : String
    var eventsDateStart : String
    var eventsDateEnd : String
    var eventsLocation: String
}



