//
//  HomePageView.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 20/06/2022.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        HStack() {
            
            Text("Les films à l'affiche")
                .fontWeight(.semibold)
                .padding()
                Spacer()
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
            .preferredColorScheme(.dark)
    }
}
