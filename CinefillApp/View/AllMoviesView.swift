//
//  AllMovieView.swift
//  CinefillApp
//
//  Created by Apprenant 20 on 23/06/2022.
//

import SwiftUI


struct AllMoviesView: View {
    
    var layout = [
        GridItem(.fixed(180)),
        GridItem(.fixed(180))
    
    ]
    @Environment(\.presentationMode) var presentation
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
    NavigationView{
            ZStack{
                
            Color("background")
                    .edgesIgnoringSafeArea(.all)

                
                VStack {
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 250, height: 30)
                            .foregroundColor(.white)

                        
                        Image(systemName: "magnifyingglass")
                            .offset(x: -100)
                        
                        TextField("Search", text: $searchText)
                        .foregroundColor(.black)
                        .offset(x: -120)
                    }.padding(.top, 80)
                    
                    Text("Tous les films à l'affiche")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 25)
                    
                    
                    ScrollView {
                        LazyVGrid(columns : layout) {
                        
                            
                            ForEach (searchResults) { movie in
                                
                                VStack{
                                    Text(movie.movieTitle)
                                        .foregroundColor(Color("cinefillorange"))
                                        
                                    Image(movie.posterMed)
                                        .resizable()
                                        .clipped()
                                        .frame(width: 150, height: 170)
                                        .background(.red)
                                        .cornerRadius(10)
                                }
                            
                        }
                    }
                    .padding(25)
                    
                    
                    
                }
            } .ignoresSafeArea()
     
    }
    }
    
        .navigationBarBackButtonHidden(true)
            
            .toolbar(content: {
               ToolbarItem (placement: .navigation)  {
                   HStack{
                  
                  Image(systemName: "chevron.left")
                  .foregroundColor(Color("cinefillorange"))
                       Text("Back")
                           .foregroundColor(Color("cinefillorange"))
                   }
                  .onTapGesture {
                      // code to dismiss the view
                      self.presentation.wrappedValue.dismiss()
                  }
               }
            })
}

}
struct AllMoviesView_Previews: PreviewProvider {
    static var previews: some View {
        AllMoviesView(moviesClass: movieClass())
    }
}


