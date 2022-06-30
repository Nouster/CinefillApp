//
//  MovieDetailView.swift
//  CinefillApp
//
//  Created by Apprenant 06 on 30/06/2022.
//

import Foundation
import SwiftUI

struct MovieDetailView: View {
    @StateObject var moviesClass: movieClass
    
    var movie: Movies
    
    var body: some View {
        
        ZStack{
            
         Color("background")
            
                .ignoresSafeArea()
            
            VStack{
                
                Text("TOP GUN 2 : MAVERICK")
                
                    .fontWeight(.semibold)
                
                    .foregroundColor(.white)
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 10)
                    
                        .frame(width: 355, height: 175)
                    
                        .foregroundColor(.white)
                    
                    Link(destination: URL(string: "https://www.youtube.com/watch?v=JYaFU81-t6c")!) {
                        
                        Image("TOP3")
                        
                            .resizable()
                        
                            .frame(width: 350, height: 170)
                        
                            .cornerRadius(10)
                        
                    }
                    
                    Image(systemName: "play.circle")
                    
                        .resizable()
                    
                        .frame(width: 60, height: 60)
                    
                        .foregroundColor(.black)
                    
                }
                
                .padding(30)
                
                Button {
                    
                } label: {
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 10)
                        
                            .foregroundColor(Color("cinefillorange"))
                        
                            .frame(width: 300, height: 40)
                        
                        Text("Séances disponibles")
                        
                            .foregroundColor(.white)
                        
                    }
                    
                }
                
                Text("Après avoir été l'un des meilleurs pilotes de chassede la Marine américaine pendant plus de trente ans, Peter Mitchell continue à repousser ses limites en tant que pilote d'essai.")
                
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                    .frame(width: 370, height: 150)
                
                    .foregroundColor(.white)
                
                ScrollView(.horizontal) {
                    
                    HStack(spacing: 0) {
                        
                        ForEach (movie.movieActor, id: \.self) { person in
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 10)
                                
                                    .foregroundColor(.white)
                                
                                    .frame(width: 125, height: 220)
                                
                                VStack{
                                    
                                    Image(person)
                                    
                                        .resizable()
                                    
                                        .frame(width: 120, height: 170)
                                    
                                        .cornerRadius(10)
                                    
                                    Text(person)
                                    
                                        .foregroundColor(.black)
                                    
                                    
                                    
                                } .padding(10)
                                
                            }
                            
                        }
                        
                    } .padding(15)
                    
                }
                
            }
            
        }
        
    }
    
}

struct MovieDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        MovieDetailView(moviesClass: movieClass(), movie:  Movies(movieTitle: "Irréductible", movieActor: ["Jérôme Commandeur","Pascale Arbillot","Estéban","Christian Clavier","Malik Bentalha","Laetitia Dosch","Gérard Darmon","Michel Crémadès","Anne-Sophie Lapix","Valérie Lemercier","Gérard Depardieu","Nicole Calfan","Eva Darlan","Jean-Marie Winling","Karina Beuthe","Hubert Myon","Karim Wallet"], posterBig: "movieOneBig", posterMed: "movieOneMed", posterSmall: "movieOneSmall", movieSynopsis: "Chargée d'écrémer la Fonction publique, une inspectrice ministérielle un peu trop zélée va utiliser tous les moyens’ en son pouvoir... Mais Vincent Peltier, paisible fonctionnaire aux Eaux et Forêts à Limoges, n'est pas du tout décidé à abandonner son travail, garanti à vie ! La guerre des nerfs ne fait que commencer quand elle le mute dans les pires recoins de France, jusqu'au Pôle Nord..", movieDateOfRelease: "29/06/2022", movieCategory: [.Comédie], movieLong: "1h25m", movieCountry: ["France"], movieDirector: ["Jérôme Commandeur"], movieProduction: ["Jérôme Commandeur, Checco Zalone"], movieClassification: .TousPublics ))
        
    }
    
}


