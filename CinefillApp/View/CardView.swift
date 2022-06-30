//
//  Card.swift
//  CinefillApp
//
//  Created by Apprenant 15 on 24/06/2022.
//


import SwiftUI

struct CardView: View {

    var body: some View {
        
       
        
        NavigationView{
            
            ZStack{
                Color("backgroundcolor")
                    .ignoresSafeArea()
                   
                ScrollView{
                VStack {
                  
                    Text("Mes abonnements ")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding(.top, -60)
                        
            ForEach(cartes) { carte in
                NavigationLink(destination: image (test: carte)) {

                    text(fidelite: carte)
            }

            }; Spacer()
                   

                    }.padding()
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
        ZStack{
            Color("backgroundcolor")
                .edgesIgnoringSafeArea(.all)
        
        VStack{
            Image("code barre").resizable().frame(width: 300,  height: 200, alignment: .trailing)
                .cornerRadius(15)
            
            ZStack{
            Rectangle()
                    .frame(width: 380, height: 100)
                    .background(Color("cinefillorange"))
                .opacity(0.2)
                .cornerRadius(15)
             
                
                Text(test.information)
                .foregroundColor(.white)
            }.padding()
       
        }
         
        }
            
    }
        
   
    

}

struct text : View {
    let fidelite: Carte
    var body: some View {
        
       
        HStack{
            Image(fidelite.Image)
                .resizable()
                .frame(width: 300,  height: 220)

                    .cornerRadius(15)
            

                               .frame(width: 350, height: 230)
                               .font(.system(size: 21,weight: .medium, design: .default))
                               .foregroundColor(.black)
                               .background(Color("cinefillorange"))
                               .opacity(0.7)
                               .cornerRadius(30)
            

        } .padding()

       
        
    }
    
    
    
}
