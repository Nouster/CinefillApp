//
//  AllEventsView.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 27/06/2022.
//

import SwiftUI

struct AllEventsView: View {
    
    @State private var searchText = ""
    
    @StateObject var eventGroup: eventClass
    
    
    
    var searchResults: [Events] {
        if searchText.isEmpty {
            return eventGroup.eventsPreviewArray
        }
        else {
            return eventGroup.eventsPreviewArray.filter { event in
                event.eventsName.lowercased().contains(searchText.lowercased()) || event.eventsCategorie.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    
    

var body: some View {
    NavigationView{
        ZStack{
            
            Color("background")
                .ignoresSafeArea()
            
            VStack (spacing: 30){
                TextField ("Que recherchez-vous ?", text: $searchText)
                    .font(Font.system(size: 16))
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.white))
                    .foregroundColor(.black)
                    .padding(.top, -50)
                    .padding()
                Text("Les évènements autour de moi")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                
                ScrollView(.vertical){
                    if  searchResults.isEmpty {
                        VStack{
                        Text("Aucun résultat")
                            .foregroundColor(Color("cinefillorange"))
                            .font(.title)
                            Text("🙈")
                                .font(.system(size: 112))
                    }
                    }
                    
                    else{
                        ForEach(searchResults) { name in
                            NavigationLink(destination: DetailedEventView(event: name)) {
                                HStack{
                                    Image(name.eventsPictures)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 100)
                                        .cornerRadius(10)
                                        .padding(.leading, 20)
                                        .padding(.trailing, 20)
                                    
                                    VStack{
                                        Text(name.eventsName)
                                            .foregroundColor(Color("cinefillorange"))
                                            .font(.system(size: 16))
                                            .fontWeight(.bold)
                                            .lineLimit(3)
                                        
                                        
                                        
                                        
                                        Text(name.eventsDescription)
                                            .lineLimit(3)
                                            .font(.footnote)
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }.padding(10)
                                
                            }
                        }
                    }
                }
                
                
                
                
                
            } .environmentObject(eventGroup)
            
        }
        
    }.accentColor(Color("cinefillorange"))
}
}

struct AllEventsView_Previews: PreviewProvider {
    static var previews: some View {
        AllEventsView(eventGroup: eventClass())
    }
}





