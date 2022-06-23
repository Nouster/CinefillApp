//
//  ProfileView.swift
//  CinefillApp
//
//  Created by Apprenant 15 on 23/06/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        
        
        
        VStack{
         
            ZStack{
            Image("zoro")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200.0, height: 250.0, alignment: .center)
                .clipShape(Circle())
                
                
                
            }
                Text("zoro")
          
            VStack{
            Button{
                
            } label: {
                HStack{
                  
                    
                    ZStack{
                        
                        Rectangle()
                        
                            .frame(width: 300, height: 40)
                            .foregroundColor(Color.orange)
                            .cornerRadius(10)
                        Text("ma carte illimitée")
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
                            .foregroundColor(Color.orange)
                            .cornerRadius(10)
                        
                        Text("mes salles préférées")
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
                            .foregroundColor(Color.orange)
                            .cornerRadius(10)
                        
                        Text("mes billets")
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
                            .foregroundColor(Color.orange)
                            .cornerRadius(10)
                        Text("mes favoris")
                            .foregroundColor(.white)
                    }
               
                }
                
            }
            
            .padding()
            
            
            Text("Déconnexion")
                .foregroundColor(.orange)
            Divider()
                .frame(width: 150, height: 02)
                .background(.orange)
            }
        }
        
    }
    
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
