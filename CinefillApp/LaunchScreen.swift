//
//  LaunchScreen.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 21/06/2022.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        ZStack{
            Image("launchScreenPicture")
                .resizable()
        
        VStack {
            
            Text("Cine Fill")
                .foregroundColor(Color("cinefillorange"))
                .fontWeight(.heavy)
                .font(.system(size: 45))
                
            
           
    
                
            
        }.edgesIgnoringSafeArea(.all)
    }
}
}
struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
