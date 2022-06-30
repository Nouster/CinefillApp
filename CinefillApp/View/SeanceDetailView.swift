
//  SeanceDetailView.swift
//  CinefillApp
//
//  Created by Apprenant 20 on 29/06/2022.
//

import SwiftUI

struct SeanceDetailView: View {
    var back = Color("BackgroundColorApp")
    var button = Color("Button")
    var body: some View {
        
        ZStack{
            
            back
            
                .ignoresSafeArea()
            
            VStack{
                
                Text("TENOR")
                
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 10)
                    
                        .frame(width: 355, height: 215)
                    
                        .foregroundColor(.white)
                    
                    Link(destination: URL(string: "https://www.youtube.com/watch?v=-rhY0fonYwM")!) {
                        
                        Image("TENOR")
                        
                            .resizable()
                        
                            .frame(width: 350, height: 210)
                        
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
                
                Text("Antoine, jeune banlieusard parisien suit des études de comptabilité sans grande conviction, partageant son temps entre les battles de rap qu'il pratique avec talent et son job de livreur de sushi")
                
                    .multilineTextAlignment(.center)
                
                    .frame(width: 340, height: 150)
                
                    .foregroundColor(.white)
                
                ScrollView(.horizontal) {
                    
                    HStack(spacing: 0) {
                        
                        ForEach (infos) { actor in
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 10)
                                
                                    .foregroundColor(.white)
                                
                                    .frame(width: 125, height: 213)
                                
                                VStack{
                                    
                                    Image(actor.image)
                                    
                                        .resizable()
                                    
                                        .frame(width: 120, height: 170)
                                    
                                        .cornerRadius(10)
                                    
                                    Text(actor.name)
                                        .font(.caption)
                                    
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
        
        SeanceDetailView()
        
    }
    
}

struct actors : Identifiable {
    
    var id = UUID()
    var name : String
    var name2 : String
    var image : String
    
}

var infos = [
    
    actors(name: "MB14", name2: "Antoine", image: "MB"),
    
    actors(name: "Guillaume Duhesme", name2: "Didier", image:"GUILLAUME"),
    
    actors(name: "Marie Oppert", name2: "Joséphine", image:"MARIE"),
    
    actors(name: "Maéva El Aroussi", name2: "Samia", image:"MAEVA"),
    
    actors(name: "Stéphane Debac", name2: "Pierre", image:"STEPHANE")
    
]
