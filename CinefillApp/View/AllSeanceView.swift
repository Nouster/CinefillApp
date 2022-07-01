//
//  AllSeanceView.swift
//  CinefillApp
//
//  Created by Apprenant 20 on 29/06/2022.
//

import SwiftUI

struct AllSeanceView: View {
    @StateObject var seancesClass: SeanceClass
    @State private var searchText = ""
    var searchResults: [Seances] {
        
        if searchText.isEmpty {
            return seancesClass.seancesArray
        }
        else {
            return seancesClass.seancesArray.filter { seance in
                seance.seanceMovie.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    var body: some View {
        
        
        
        ZStack{
            
           Color("background")
                .ignoresSafeArea()
            
            VStack{
                
                Text("Les séances les moins chères")
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
                            .foregroundColor(Color("cinefillorange"))
                            .frame(width: 25, height: 25)
                            .offset(x:-50)
                    }
                    
                    HStack{
                        VStack{
                        Text("Comédies")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            
                            
                        
                        ScrollView(.horizontal) {
                            
                            HStack(spacing: 40) {
                                
                                ForEach (searchResults) { seance in
                                    
                                    VStack{
                                     
                                        Text(seance.seanceMovie)
                                            .foregroundColor(.white)
                                        Text("\(seance.seancePrice)")
                                            .foregroundColor(.white)
                                    }
                                    }
                                }
                            }
                        }
                        
                        .padding(25)
                        
                        
                    }
                }
            }
        }
    }
}

struct AllSeanceView_Previews: PreviewProvider {
    static var previews: some View {
        AllSeanceView(seancesClass: SeanceClass())
    }
}

