//
//  dataCity.swift
//  CinefillApp
//
//  Created by Apprenant 06 on 20/06/2022.
//

import SwiftUI

struct City: Identifiable{
        var id = UUID()
        var cityName : String
        var zipCode : Int
}

var CitiesArray = [City(cityName: "Toulouse", zipCode: 31000),
                City(cityName: "Lyon", zipCode: 69000)
]
