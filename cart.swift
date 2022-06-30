//
//  cart.swift
//  CinefillApp
//
//  Created by Apprenant 15 on 30/06/2022.
//

import SwiftUI

struct cart: View {
    var body: some View {
        ZStack{

        Color("backgroundcolor")

        .edgesIgnoringSafeArea(.all)

        VStack(alignment: .leading){

        VStack{

        Text("Votre panier")

        .foregroundColor(.white)

        .font(.system(size: 20))

        Divider()

        .frame(width: 500, height: 5)

        .background(Color("cinefillorange"))

        //                    .padding()
            HStack{
        Image("top")
               
        .resizable()
        .padding()
        .frame(width: 150, height: 100)
                

                ZStack{

                VStack(alignment: .leading){

                Text("TOP GUN: Maverick")

                .foregroundColor(.white)

                Text("Ticket: 1 place")

                .foregroundColor(.white)
                    Text("Tarif: 7,00 €")
                        .foregroundColor(.white)
                Text("Lieu: UCG Cinéma La Roquette")

                .foregroundColor(.white)
                 
                
              
                }

                }

      
           
      
            }
            Divider()

            .frame(width: 200, height: 2)

            .background(Color("cinefillorange"))
            
            .padding()
            
            
            ZStack{
            Rectangle()
                    .frame(width: 250, height: 450)
                    .foregroundColor(Color("backgroundcolor"))
                    .background(.orange)
            
            
            
            }
            
            Button{

            } label: {

//            NavigationLink(destination: payment(),label: {

            ZStack{

            Rectangle()

            .frame(width: 250, height: 50)

            .foregroundColor(Color("cinefillorange"))

            .cornerRadius(15)

            Text("RESERVER MAINTENANT")

            .font(.system(size: 20))

            .foregroundColor(.white)

            }

//            })

            }
            .padding()
        }.padding()
        
        }
        
}
    }
}

struct cart_Previews: PreviewProvider {
    static var previews: some View {
        cart()
    }
}
