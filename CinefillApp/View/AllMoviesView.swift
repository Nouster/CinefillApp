//
//  AllMovieView.swift
//  CinefillApp
//
//  Created by Apprenant 20 on 23/06/2022.
//

import SwiftUI


struct AllMoviesView: View {
    
@State private var searchText = ""
var body: some View {
            ZStack{
                
            Color("background")
                
                VStack {
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 250, height: 30)
                            .foregroundColor(.white)
                            .offset(y:-70)
                        
                        Image(systemName: "magnifyingglass")
                            .offset(x: -100, y: -70)
                        
                        TextField("Search", text: $searchText)
                        .foregroundColor(.black)
                        .offset(x: 120, y: -70)
                    }
                    
                    Text("Tous les films à l'affiche")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 40) {
                            
                            ForEach (films) { film in
                                
                                VStack{
                                    Text(film.name)
                                        .foregroundColor(.white)
                                    Image(film.image)
                                        .resizable()
                                        .frame(width: 150, height: 170)
                                        .background(.red)
                                        .cornerRadius(10)
                                }
                            }
                        }
                    }
                    .padding(25)
                    
                    
                    ScrollView(.horizontal) {
                        
                        HStack(spacing: 40) {
                            
                            ForEach (films2) { film in
                                
                                VStack{
                                    
                                    Text(film.name2)
                                        .foregroundColor(.white)
                                    
                                    Image(film.image2)
                                        .resizable()
                                        .frame(width: 150, height: 170)
                                        .background(.red)
                                        .cornerRadius(10)
                                }
                                
                            }
                            
                        }
                    }
                    .padding(25)
                    
                }
            } .ignoresSafeArea()
     
    }
}


struct AllMoviesView_Previews: PreviewProvider {
    static var previews: some View {
        AllMoviesView()
    }
}


struct Movie : Identifiable {
    var id = UUID()
    var name : String
    var image : String
}

var films = [
    Movie(name: "TOP GUN", image: "TOP"),
    Movie(name: "JURASSIC WORLD", image:"WORLD")
]

struct Movie2 : Identifiable {
    var id = UUID()
    var name2 : String
    var image2 : String
}

var films2 = [
    Movie2(name2: "SEGPA", image2: "SEGPA"),
    Movie2(name2: "DOCTOR STRANGE", image2:"DOCTOR")
]
