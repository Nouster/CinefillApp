//
//  AllEventsView.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 27/06/2022.
//

import SwiftUI

struct AllEventsView: View {
    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText) }
        }
    }

    let names = ["Holly", "Josh", "Rhonda", "Ted"]
      @State private var searchText = ""
    var body: some View {
        ZStack{
            Color("BackgroundColorApp")
            VStack{
                NavigationView {
                           List {
                               ForEach(searchResults, id: \.self) { name in
                                   NavigationLink(destination: Text(name)) {
                                       Text(name)
                                   }
                               }
                           }
                           .searchable(text: $searchText) {
                               ForEach(searchResults, id: \.self) { result in
                                   Text("Are you looking for \(result)?").searchCompletion(result)
                               }
                           }
                           .navigationTitle("Contacts")
                       }
                   }
                    }

                    
                }
            }
        

    
struct AllEventsView_Previews: PreviewProvider {
    static var previews: some View {
        AllEventsView()
    }
}
