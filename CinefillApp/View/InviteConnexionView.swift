//
//  InviteConnexionView.swift
//  CinefillApp
//
//  Created by Apprenant 20 on 21/06/2022.
//

import SwiftUI

struct InviteConnexionView: View {
    @State var city : String = ""
    @State var loc : String = ""
    var back = Color("background")
    var button = Color("cinefillorange")
    var body: some View {
        NavigationView{
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(back)
                .frame(width: 400, height: 850)
                .ignoresSafeArea()
            
            VStack{
                
                Image("yellow")
                    .resizable()
                    .frame(width: 400, height: 250)
                
                Text("Découvrez et réservez une séance près de chez vous au meilleur prix !")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(20)
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
                        .frame(width: 350, height: 400)
                        .ignoresSafeArea()
                    
                    VStack{
                        
                        ZStack{
                            
                            Text("Les séances et évènements autour de moi")
                            
                            
                        }
                        Divider()
                            .frame(width: 320, height: 2)
                            .background(button)
                        
                        
                  
                        
                        VStack(alignment: .leading, spacing: 30){
                            
                            HStack{
                               
                                    
                                    Image("place")
                                        .resizable()
                                        .foregroundColor(.blue)
                                        .frame(width: 40, height: 40)
                                        .padding(10)
                                    
                                TextField("Sélectionnez votre ville", text: $city)
                                        .foregroundColor(button)
                            } .offset(x:20)
                            
                            HStack{
                                
                                    Image(systemName: "location.fill")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(.black)
                                        .padding(10)
                                
                                    TextField("Me géolocaliser", text: $loc)
                                            .foregroundColor(button)
                                
                            } .offset(x:20)
                        }
                            
                            .padding(30)
                            
                           
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(button)
                                        .frame(width: 300, height: 50)
                                   
                                    
                                    NavigationLink{
                                        CustomTabBarView(moviesClass: movieClass(), eventArray: eventClass(), viewRouter: ViewRouter(), seancesClass: SeanceClass())
                                    }label: {
                                        Text("C'EST PARTI !")
                                            .foregroundColor(.white)
                                    }
                                    
                                    
                                
                            
                        }
                    }
                }
            }
        }
        }.navigationBarHidden(true)
    }
}

struct InviteConnexionView_Previews: PreviewProvider {
    static var previews: some View {
        InviteConnexionView()
    }
}
