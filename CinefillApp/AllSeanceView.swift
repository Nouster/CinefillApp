//
//  AllSeanceView.swift
//  CinefillApp
//
//  Created by Apprenant 20 on 29/06/2022.
//

import SwiftUI

struct AllSeanceView: View {
    @State private var searchText = ""
    var back = Color("BackgroundColorApp")
    var button = Color("Button")
    var body: some View {
        
        
        
        ZStack{
            
            back
                .ignoresSafeArea()
            
            VStack{
                
                Text("Les séance les moins chères")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                VStack {
                    HStack{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 250, height: 30)
                                .foregroundColor(.white)
                            
                            
                            Image(systemName: "magnifyingglass")
                                .offset(x: -100)
                            
                            
                            TextField("Search", text: $searchText)
                                .foregroundColor(.black)
                                .offset(x:100)
                            
                        }
                        Image(systemName: "slider.horizontal.3")
                            .resizable()
                            .foregroundColor(button)
                            .frame(width: 25, height: 25)
                            .offset(x:-50)
                    }
                    
                    HStack{
                        VStack{
                        Text("Comédies")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            
                        
                        ScrollView(.horizontal) {
                            
                            HStack(spacing: 20) {
                                
                                ForEach (films) { film in
                                    
                                    VStack{
                                        
                                      
                                        
                                        Image(film.image)
                                            .resizable()
                                            .frame(width: 90, height: 100)
                                            .cornerRadius(10)
                                        Text(film.name)
                                            .font(.footnote)
                                            .foregroundColor(.white)
                                        Text(film.prix)
                                            .foregroundColor(.white)
                                            .font(.footnote)
                                    }
                                    }
                                }
                            }
                        }
                        
                        .padding(25)
                       
                        
                        
                    }
                    
                    HStack{
                        VStack{
                        Text("Films Français")
                            .fontWeight(.bold)
                        
                            .foregroundColor(.white)
                        
                        ScrollView(.horizontal) {
                            
                            HStack(spacing: 20) {
                                
                                ForEach (films2) { film2 in
                                    
                                    VStack{
                                        
                                      
                                        
                                        Image(film2.image)
                                            .resizable()
                                            .frame(width: 90, height: 100)
                                            .background(.red)
                                            .cornerRadius(10)
                                        Text(film2.name)
                                            .foregroundColor(.white)
                                            .font(.footnote)
                                        Text(film2.prix)
                                            .foregroundColor(.white)
                                            .font(.footnote)
                                    }
                                    }
                                }
                            }
                        }
                        
                        .padding(25)
                        
                        
                    }
                    
                    HStack{
                        VStack{
                            
                        Text("Documentaires")
                            .fontWeight(.bold)
                        
                            .foregroundColor(.white)
                        
                        ScrollView(.horizontal) {
                            
                            HStack(spacing: 20) {
                                
                                ForEach (films3) { film3 in
                                    
                                    VStack{
                                        
                                        Image(film3.image)
                                            .resizable()
                                            .frame(width: 90, height: 100)
                                            .cornerRadius(10)
                                        
                                        Text(film3.name)
                                            .foregroundColor(.white)
                                            .font(.footnote)
                                        
                                        Text(film3.prix)
                                            .foregroundColor(.white)
                                            .font(.footnote)
                                    }
                                    }
                                }
                            }
                        }
                        
                        
                    }     .padding()
                }
            }
        }
    }
}

struct AllSeanceView_Previews: PreviewProvider {
    static var previews: some View {
        AllSeanceView()
    }
}

struct Movie : Identifiable {
    
    var id = UUID()
    var name : String
    var image : String
    var prix : String
    
}

var films = [
    
    Movie(name: "CGR Blagnac", image: "TENOR2", prix:"6,90€"),
    Movie(name: "CGR Blagnac", image:"RESPECT", prix: "7,90€"),
    Movie(name: "UGC La Roquette", image:"ELIZABETH", prix: "7,90€"),
    Movie(name: "UGC La Roquette", image:"MEDECIN", prix: "7,90€"),
    
]

var films2 = [
    
    Movie(name: "Le Comédia", image: "MEDECIN", prix:"9,40€"),
    Movie(name: "Gaumont Wilson", image:"CHAMPAGNE", prix: "7,40€"),
    Movie(name: "CNP Jaurès", image:"CORPS", prix: "8,98€"),
    
]

var films3 = [
    
    Movie(name: "CGR Blagnac", image: "143", prix:"6,90€")
    
]

