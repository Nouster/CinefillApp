//
//  ProfileView.swift
//  CinefillApp
//
//  Created by Apprenant 15 on 23/06/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        
        ZStack{
            
            Color("background")
                .edgesIgnoringSafeArea(.bottom)
        
        VStack{
    
            ZStack{
            Image("photo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250.0, height: 250.0, alignment: .center)
                .clipShape(Circle())
                
         
                
            }
            Text("Mata Hari").font(.headline).bold().italic()
//
                .foregroundColor(.white)
          
            VStack{
            Button{
               
            } label: {
            
                
                
                
            
                  
                    
                    ZStack{
                     
                        Rectangle()
                        
                            .frame(width: 300, height: 40)
                            .foregroundColor(Color("cinefillorange"))
                            .cornerRadius(10)
                        
                        
                     
                        Text("Ma carte illimitée                           ")
                            .foregroundColor(.white)
                        + Text(Image(systemName:  "book"))
                            .foregroundColor(.white)
                       
                       
                           
                    }
                  
              
                
            }
            
            .padding()
            
            
            
            
            Button{
                
            } label: {
                HStack{
                  
                    
                    ZStack{
                        
                        Rectangle()
                        
                            .frame(width: 300, height: 40)
                            .foregroundColor(Color("cinefillorange"))
                            .cornerRadius(10)
                    
                        Text("Mes salles préférées                     ")
                            .foregroundColor(.white)
                        + Text(Image(systemName:  "film"))
                            .foregroundColor(.white)
                         
                                        
                }
                
            }
                         }
            .padding()
            
            Button{
                
            } label: {
                HStack{
                  
                    
                    ZStack{
                        
                        Rectangle()
                        
                            .frame(width: 300, height: 40)
                            .foregroundColor(Color("cinefillorange"))
                            .cornerRadius(10)
                        
                        Text("Mes billets                                       ")
                            .foregroundColor(.white)
                        + Text(Image(systemName:  "qrcode"))
                            .foregroundColor(.white)

                    }
                    
                }
                
            }
            
            .padding()
            
            Button{
                
            } label: {
                HStack{
                  
                    
                    ZStack{
                   
                        Rectangle()
                        
                            .frame(width: 300, height: 40)
                            .foregroundColor(Color("cinefillorange"))
                            .cornerRadius(10)
                        Text("Mes favoris                                     ")
                            .foregroundColor(.white)
                        + Text(Image(systemName:  "bookmark"))
                            .foregroundColor(.white)
                    }
               
                }
                
            }
            
            .padding()
            
                Button{
                    
                } label: {
            Text("Déconnexion")
                .foregroundColor(Color("cinefillorange"))
                }
            Divider()
                .frame(width: 150, height: 02)
                .background(Color("cinefillorange"))
            }
          
        }
        
    }
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
