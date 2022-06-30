//
//  CinefillAppApp.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 17/06/2022.
//

import SwiftUI

@main
struct CinefillAppApp: App {
    @StateObject var viewRouter = ViewRouter()
    var body: some Scene {
        WindowGroup {
            //CustomTabBarView(viewRouter: viewRouter)
            SeanceCalendarView()
        }
    }
}
