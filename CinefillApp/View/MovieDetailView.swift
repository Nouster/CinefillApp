//
//  MovieDetailView.swift
//  CinefillApp
//
//  Created by Apprenant 06 on 30/06/2022.
//

import Foundation
import SwiftUI

struct MovieDetailView: View {
    
    var back = Color("BackgroundColorApp")
    
    var button = Color("Button")
    
    var body: some View {
        
        ZStack{
            
            back
            
                .ignoresSafeArea()
            
            VStack{
                
                Text("TOP GUN 2 : MAVERICK")
                
                    .fontWeight(.semibold)
                
                    .foregroundColor(.white)
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 10)
                    
                        .frame(width: 355, height: 175)
                    
                        .foregroundColor(.white)
                    
                    Link(destination: URL(string: "https://www.youtube.com/watch?v=JYaFU81-t6c")!) {
                        
                        Image("TOP3")
                        
                            .resizable()
                        
                            .frame(width: 350, height: 170)
                        
                            .cornerRadius(10)
                        
                    }
                    
                    Image(systemName: "play.circle")
                    
                        .resizable()
                    
                        .frame(width: 60, height: 60)
                    
                        .foregroundColor(.black)
                    
                }
                
                .padding(30)
                
                Button {
                    
                } label: {
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 10)
                        
                            .foregroundColor(button)
                        
                            .frame(width: 300, height: 40)
                        
                        Text("Séances disponibles")
                        
                            .foregroundColor(.white)
                        
                    }
                    
                }
                
                Text("Après avoir été l'un des meilleurs pilotes de chassede la Marine américaine pendant plus de trente ans, Peter Mitchell continue à repousser ses limites en tant que pilote d'essai.")
                
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                    .frame(width: 370, height: 150)
                
                    .foregroundColor(.white)
                
                ScrollView(.horizontal) {
                    
                    HStack(spacing: 0) {
                        
                        ForEach (infos) { actor in
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 10)
                                
                                    .foregroundColor(.white)
                                
                                    .frame(width: 125, height: 220)
                                
                                VStack{
                                    
                                    Image(actor.image)
                                    
                                        .resizable()
                                    
                                        .frame(width: 120, height: 170)
                                    
                                        .cornerRadius(10)
                                    
                                    Text(actor.name)
                                    
                                        .foregroundColor(.black)
                                    
                                    Text(actor.name2)
                                    
                                        .font(.footnote)
                                    
                                        .foregroundColor(.gray)
                                    
                                } .padding(10)
                                
                            }
                            
                        }
                        
                    } .padding(15)
                    
                }
                
            }
            
        }
        
    }
    
}

struct MovieDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        MovieDetailView()
        
    }
    
}


