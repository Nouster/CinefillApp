//
//  Card.swift
//  CinefillApp
//
//  Created by Apprenant 15 on 24/06/2022.
//


import SwiftUI

struct CardView: View {

    var body: some View {
        
       
        
       
            
            ZStack{
                Color("background")
                    .ignoresSafeArea()
                   
                ScrollView{
                VStack {
                  
                    Text("Mes abonnements")
                        .foregroundColor(.white)
                        .font(.title)
                    Divider()
                        .frame(width: 175, height: 2)
                        .background(Color("cinefillorange"))
               
            ForEach(cartes) { carte in
                

                    text(fidelite: carte)
            

            }
                   

                    }
                }
            }
        }
    
}

struct Cartefidelité_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}


struct image : View {
    
    let test: Carte
    var body: some View {
    
        
        VStack{
            Image("code barre").resizable().frame(width: 100,  height: 200, alignment: .trailing)
                .cornerRadius(15)
            
            ZStack{
            Rectangle()
                    .frame(width: 380, height: 100)
                    .background(Color("cinefillorange"))
                .opacity(0.2)
                .cornerRadius(15)
             

            }.padding()
       
        }
         
        
            
    }
        
   
    

}

struct text : View {
    let fidelite: Carte
    var body: some View {
        
       
        HStack{
            VStack{
            Text(fidelite.cardName)
                    .foregroundColor(.white)
            Image(fidelite.cardImage)
                .resizable()
                .frame(width: 150,  height: 100)
                .cornerRadius(15)

           
            }
            Text("Valable pendant \(fidelite.cardTime) jours ")
                .foregroundColor(.white)
            

        }.padding()
        
        

       
        
    }
    
    
    
}
