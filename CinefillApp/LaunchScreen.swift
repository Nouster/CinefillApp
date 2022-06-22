//
//  LaunchScreen.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 21/06/2022.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        ZStack {
            
            
            Image("launchScreenPicture")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                Text("Cine Fill")
                    .font(.system(size: 45))
                    .foregroundColor(Color("cinefillorange"))
                    .fontWeight(.heavy)
                    .padding()
               Spacer()
         
                Button {
                    print("Some Text")
                } label: {
                    ZStack{
                        
                        Text("S'inscrire")
                            .fontWeight(.medium)
                            .frame(width: 280, height: 60)
                            .foregroundColor(.black)
                        
                            .font(.system(size: 24))
                        
                            .background (LinearGradient (colors: [Color("cinefillorange"), .red], startPoint: .top, endPoint: .bottom))
                        
                        
                            .cornerRadius(15)
                    }
                    }
                    Button {
                        print("Some Text")
                    } label: {
                        ZStack{
                            
                            Text("Connexion")
                                .fontWeight(.medium)
                                .frame(width: 280, height: 60)
                                .foregroundColor(.black)
                            
                                .font(.system(size: 24))
                            
                                .background (LinearGradient (colors: [Color("cinefillorange"), .red], startPoint: .top, endPoint: .bottom))
                            
                            
                                .cornerRadius(15)
                            
                        }
                        
                        
                        
                        
                    }
                Spacer()
                Button {
                    print("Some Text")
                } label: {
                    ZStack{
                        
                        Text("Continuer en tant qu'invité")
                            .fontWeight(.medium)
                            .frame(width: 280, height: 60)
                            .foregroundColor(.white)
                        
                            .font(.system(size: 16))
                        
                            .cornerRadius(15)
                        
                    }

                    }
    
Spacer()
                }
            }
        }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
