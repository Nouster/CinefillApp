//
//  AllSeanceView.swift
//  CinefillApp
//
//  Created by Apprenant 20 on 29/06/2022.
//

import SwiftUI

struct AllSeanceView: View {
    
    var layout = [
        GridItem(.fixed(180)),
        GridItem(.fixed(180))
    
    ]
    @Environment(\.presentationMode) var presentation
    
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
        
        NavigationView{
        
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
                            
                            
                        
                        ScrollView(.vertical) {
                            
                                
//                                ForEach (searchResults) { seance in
//
//                                    VStack{
//
//                                        Text(seance.seanceMovie)
//                                            .foregroundColor(.white)
//                                        Text("\(seance.seancePrice)")
//                                            .foregroundColor(.white)
//                                    }
//                                    }
                                //
                                ForEach(searchResults) { seance in
                                    
                                    NavigationLink {
                                        Booking(seanceClass: seancesClass, seance: seance)
                                    } label: {
                                        HStack{
                                            Image(seance.seanceLargePicture)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 150, height: 100)
                                                .cornerRadius(10)
                                                .padding(.leading, 20)
                                                .padding(.trailing, 20)
                                            Spacer()
                                            
                                            VStack{
                                                Text(seance.seanceMovie)
                                                    .foregroundColor(Color("cinefillorange"))
                                                    .font(.system(size: 16))
                                                    .fontWeight(.bold)
                                                    .lineLimit(3)
                                                
                                                
                                                
                                                
                                                Text(seance.seanceLocation)
                                                    .lineLimit(3)
                                                    .font(.footnote)
                                                    .foregroundColor(.white)
                                                    .multilineTextAlignment(.leading)
                                                Text("Prix: \(seance.seancePrice)€")
                                                    .lineLimit(3)
                                                    .font(.footnote)
                                                    .foregroundColor(.white)
                                                    .multilineTextAlignment(.leading)
                                                
                                            }
                                        }.padding(10)
                                    }

                                
                                }
                                
                                //
                                
                            }
                        }
                        
                        .padding(25)
                        
                        
                    }
                }
            }.padding(.top , -40)
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

struct AllSeanceView_Previews: PreviewProvider {
    static var previews: some View {
        AllSeanceView(seancesClass: SeanceClass())
    }
}

