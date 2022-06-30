//
//  Applepay.swift
//  CinefillApp
//
//  Created by Apprenant 15 on 30/06/2022.
//

import SwiftUI

struct Applepay: View {
    var body: some View {
        ZStack{
            
        
            Color("backgroundcolor")
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading){
            VStack{
             
                Text("UCG Cinéma la roquette")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
            
                Divider()
                    .frame(width: 500, height: 5)
                    .background(Color("cinefillorange"))
               
//                    .padding()
                
                Image("top")
                    .resizable()
                    .frame(width: 300, height: 150)
                
                Text("TOP GUN : Maverick")
                    .foregroundColor(.white
                    )
                Text("7,00 €")
                
                    .foregroundColor(.white)
                Divider()
                    .frame(width: 500, height: 5)
                    .background(Color("cinefillorange"))
               
//                    .padding()
                
                VStack{
                    HStack{
                Text("Apple Pay")
                    .foregroundColor(.white)
                    .font(.title2)
                    
                
                    .padding()
            
             
                    Button{
                     
                   } label: {
                    
//                       NavigationLink(destination: Payment(),label: {
                         
                    ZStack{
                       
                    Text("Cancel")
                            .foregroundColor(.blue)
                    }
//                       })
//                       
                   }.padding(.horizontal, 65)
                    }
                
                HStack{
                    Image("top")
                        .resizable()
                        .frame(width: 30, height: 30)
                    
                ZStack{
                    Text("TOP GUN : Maverick")
                        .foregroundColor(.white)
                        .padding()
               
            
                }
                .padding()
                }
                
                HStack{
               Text("DETAILS:")
                        .foregroundColor(.gray)
                    
                ZStack{
                    VStack(alignment: .leading){
                    Text("Séance le 14/06")
                        .foregroundColor(.white)
                    Text("12H30")
                        .foregroundColor(.white)
                    Text("UCG Cinéma La Roquette")
                    
                        .foregroundColor(.white)
                      
                    }.padding()
//                    .padding()
                }
                }
                HStack{
                    Text("ACCOUNT:")
                        .foregroundColor(.gray)
                    
                ZStack{
                    Text("subs@exemple.com")
                        .foregroundColor(.white)
                 
               
            
                }.padding()
                .padding()
                }
                HStack{
                    Text("PRICE:")
                        .foregroundColor(.gray)
//                        .padding()
                ZStack{
//                    VStack(alignment: .leading){
                    Text("7,00€")
                        .foregroundColor(.white)
                     
                 
                 
                      
                }.padding(.horizontal, 65)
                  
                }
                    
                    Button{
                     
                   } label: {
                    
                       NavigationLink(destination: validation(),label: {
                         
                    ZStack{
                       
                    Circle()
                    
                        .frame(width: 350, height: 90)
                    
                        .foregroundColor(Color("cinefillorange"))
                
                        .cornerRadius(15)
                        
                        
                        Text("Ok")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                       
                    }
                       })
                   }
                        
                }.padding()
              
       
               
            }
            }
        }
    }
}

struct Applepay_Previews: PreviewProvider {
    static var previews: some View {
        Applepay()
    }
}
