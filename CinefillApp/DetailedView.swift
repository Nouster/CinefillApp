//
//  ElvisView.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 28/06/2022.
//

import SwiftUI

struct DetailedView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var eventGroup: eventClass
    var event: Events

    var body: some View {
        ZStack{
            Color("BackgroundColorApp")
            VStack(spacing: 20){
                Text(event.eventsName)
                    .font(.system(size: 38))
                    .foregroundColor(Color("cinefillorange"))
                Image(event.eventsPictures)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .frame(width: 400, height: 400)
                    
                HStack(spacing: 20){
                    Button {
                        print("Something")
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                            .font(.system(size: 24))
                            .foregroundColor(Color("cinefillorange"))
                    }

                    
                    Button {
                        print("Something")
                    } label: {
                        Image(systemName: "heart")
                            .font(.system(size: 24))
                            .foregroundColor(Color("cinefillorange"))
                    }
                }
                Text(event.eventsDescription)
                    .foregroundColor(.white)
                    .padding()
            }
        }
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(event:
                    Events(eventsName: "Elvis", eventsPictures: "elvis", eventsDescription: "La vie et l'oeuvre musicale d'Elvis Presley à travers le prisme de ses rapports complexes avec son mystérieux manager, le colonel Tom Parker. Le film explorera leurs relations sur une vingtaine d'années, de l'ascension du chanteur à son statut de star inégalé, sur fond de bouleversements culturels et de la découverte par l'Amérique de la fin de l'innocence.", eventsDateStart: nil, eventsDateEnd: nil, eventsLocation: "France",enventsAdress: nil, eventsCategorie: "Avant-Première"))
    }
}


