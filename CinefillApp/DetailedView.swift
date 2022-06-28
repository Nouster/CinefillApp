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
            ScrollView(.vertical){
           
                Text(event.eventsName)
                    .font(.system(size: 30))
                    .foregroundColor(Color("cinefillorange"))
                    .frame(width: 300, height: 80)
                    .padding(.top, 89)
                Image(event.eventsPictures)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .frame(width: 350)
                    .padding()
                    
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
        
    }.ignoresSafeArea()
}
}
struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(event:
                    Events(eventsName: "Yuku et la fleur de l'Himalaya", eventsPictures: "yukuetlafleurdelhimalaya", eventsDescription: "En haut des plus hautes montagnes de la terre vit une plante qui se nourrit de la plus parfaite lumière du soleil. Elle s'appelle… la fleur de l'Himalaya. Yuku quitte sa famille pour partir à la recherche de cette fleur à la lumière éternelle. Elle veut l'offrir à sa grand-mère qui a annoncé qu'elle devra bientôt partir avec la petite taupe aveugle dans les méandres de la terre. Mais pour la trouver, il y a un long voyage à parcourir, semé d'obstacles. Il faut traverser le terrible domaine des rats d'égouts sous le château, la prairie aux corbeaux, cruels et voraces, la forêt enchantée où l'on se perd. Et, surtout, le petit pont de la peur, qui est gardé par le loup ! Mais sur son parcours, grâce à sa musique et à ses chansons, Yuku va se faire beaucoup d'amis. Ils sont le bien le plus précieux pour réussir l'aventure de la vie.", eventsDateStart: "28/08/2022", eventsDateEnd: nil, eventsLocation: "Lyon",enventsAdress: nil, eventsCategorie: "Avant-Première"))
}

}
