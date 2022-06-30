//
//  BookingView.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 30/06/2022.
//

import SwiftUI

struct Booking: View {
    @StateObject var seanceClass : SeanceClass
 
    @State private var rating: Int?
    var body: some View {
        ZStack{
            
          Color("background")
          .edgesIgnoringSafeArea(.bottom)
            
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

                
                
                Image("top")
                    .resizable()
                    .frame(width: 300, height: 150)
                    .padding()
                    Text("TOP GUN : Maverick")
                        .foregroundColor(.white)
                     
           
                
//                VStack(alignment: .leading){
                
                Text("Ticket:")
                    .foregroundColor(.white)
                
              
                    VStack(alignment: .leading){
                 
                    Star(rating: $rating)
                            .frame(width: 100, height: 50)
                }.padding()
//                VStack(alignment: .leading){
                    Text("Horaire: 12H30")
                    .foregroundColor(.white)
                  
                Text("Tarif: 7,00€")
                    .foregroundColor(.white)
                    
                Text("Lieu: UCG Cinéma la Roquette")
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
        Booking(seanceClass: SeanceClass())
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
