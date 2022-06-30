//
//  AllMovieView.swift
//  CinefillApp
//
//  Created by Apprenant 20 on 23/06/2022.
//

import SwiftUI


struct AllMoviesView: View {
    
@StateObject var moviesClass: movieClass
@State private var searchText = ""
    var searchResults: [Movies] {
        if searchText.isEmpty {
            return moviesClass.moviesArray
        }
        else {
            return moviesClass.moviesArray.filter { movie in
                movie.movieTitle.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
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
                            
                            ForEach (searchResults) { movie in
                                
                                VStack{
                                    Text(movie.movieTitle)
                                        .foregroundColor(.white)
                                    Image(movie.posterMed)
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
        AllMoviesView(moviesClass: movieClass())
    }
}


