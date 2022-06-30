//
//  LaunchScreen.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 21/06/2022.
//

import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
        NavigationView{
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
         
                NavigationLink {
                    SubscriptionView()
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
                NavigationLink {
                    LoginPageView()
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
                
                        
                        NavigationLink{
                            InviteConnexionView()
                        }label:{
                            Text("Continuer en tant qu'invité")
                            .fontWeight(.medium)
                            .frame(width: 280, height: 60)
                            .foregroundColor(.white)
                        
                            .font(.system(size: 16))
                        
                            .cornerRadius(15)
                        }
                    

                    
    
Spacer()
                }
            }
        }
        }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
    }
}
