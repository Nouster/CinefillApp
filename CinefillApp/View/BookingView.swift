//
//  BookingView.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 30/06/2022.
//

import SwiftUI

struct Booking: View {
    @StateObject var seanceClass : SeanceClass
    var seance: Seances
 
    @State private var rating: Int?
    var body: some View {
        ZStack{
            
          Color("background")
          .ignoresSafeArea()
            
            VStack{
                
                Text("Réservation")
                    .foregroundColor(.white)
                    .font(.title)
                
                Divider()
                .frame(width: 400, height: 3)
                .background(Color("cinefillorange"))

                
                VStack(alignment: .leading){
                    Text("Bonjour \(profile.userPseudo)\n Vous avez selectionné le film suivant: ")
                    .foregroundColor(.white)

                
                
                    Image(seance.seanceLargePicture)
                    .resizable()
                    .frame(width: 300, height: 250)
                    .padding()
                    Text(seance.seanceMovie)
                        .foregroundColor(.white)
                     
           
                
//                VStack(alignment: .leading){
                
                Text("Ticket:")
                    .foregroundColor(.white)
                
              
                    VStack(alignment: .leading){
                 
                    Star(rating: $rating)
                            .frame(width: 100, height: 50)
                }.padding()
//                VStack(alignment: .leading){
                    Text("Horaire: \(seance.seanceTime)")
                    .foregroundColor(.white)
                  
                    Text("Tarif: \(seance.seancePrice)")
                    .foregroundColor(.white)
                    
                    Text("Lieu: \(seance.seanceLocation)")
                    .foregroundColor(.white)
                
               
                    
                }.padding()
                
                VStack{
                Button{
                }label:  {
                    ZStack{
                            Text("AJOUTER AU PANIER")
                            .frame(width: 240, height: 40)
               .foregroundColor(.white)
                }
                }
            }
                .background(Color("cinefillorange"))
                .cornerRadius(10)
                .padding(50)
                Spacer()
                  
            }.padding()
          
        }
            
            }
            
    }
        

        
        
        
struct Booking_Previews: PreviewProvider {
    static var previews: some View {
        Booking(seanceClass: SeanceClass(), seance: Seances(seanceLocation: "Gaumont Wilson", seanceMovie: "Goodnight Soldier",seanceLargePicture: "movieFiveSmall",seanceSmallPicture: "", seanceTime: "20", seanceDate: "21/06/2022", seancePrice: "10.10", seanceLanguageVersion: "VF", seanceAccessibilityInfos: [AccesibilityInfos(name: "Sous-Titres Sourds et Malentendants", isAvailable: true), AccesibilityInfos(name: "Personnes à mobilité réduite", isAvailable: true)]))
    }
}


struct Star: View {
    @Binding var rating: Int?
    private func starType(index: Int)-> String {
        
        if let rating = self.rating {
            return index <= rating ? "plus.circle.fill":"plus.circle"
        }else {
            return "plus.circle"
            
        }
    }

    var body: some View {

        HStack{
            ForEach(1...5, id: \.self) { index in Image(systemName: self.starType(index: index))
                    .foregroundColor(Color("cinefillorange"))
                    .frame(width: 20, height: 30)
                    .onTapGesture {
                        self.rating = index
                           
                    }
                
            }
            
           
        }
    }
}
