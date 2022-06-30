//
//  favorites.swift
//  CinefillApp
//
//  Created by Apprenant 15 on 30/06/2022.
//

import SwiftUI

struct favorites: View {

    var body: some View {
      
        ZStack{
            Color("backgroundcolor")
                .ignoresSafeArea()
            VStack{
                ScrollView{
                Text("Favoris")
                
                    .foregroundColor(.white)
                Divider()
                    .frame(width: 300, height: 2)
                    .background(Color("cinefillapp"))
                
                

                    
            HStack{
             
//
                Button{

                } label: {

//                    NavigationLink(destination: validation(),label: {

                ZStack{

                    Image("top")
                        .resizable()
                        .frame(width: 130, height: 130)
                        .cornerRadius(15)
               

                }
                }
//                    })
                
                
                
                
                
                boutonlikes()
                
        HStack{
         
   
            
            Button{

            } label: {

//                    NavigationLink(destination: validation(),label: {

            ZStack{

                Image("top")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .cornerRadius(15)
           

            }
            }
//                    })
            
            
            
            
        }
            boutonlikes()
            }.padding()
            HStack{
                Button{

                } label: {

    //                    NavigationLink(destination: validation(),label: {

                ZStack{

                    Image("top")
                        .resizable()
                        .frame(width: 130, height: 130)
                        .cornerRadius(15)
               

                }
                }
    //                    })
                
                boutonlikes()
                   
                Button{

                } label: {

    //                    NavigationLink(destination: validation(),label: {

                ZStack{

                    Image("top")
                        .resizable()
                        .frame(width: 130, height: 130)
                        .cornerRadius(15)
               

                }
                }
    //                    })
                
                boutonlikes()
            }.padding()
            HStack{
                Button{

                } label: {

    //                    NavigationLink(destination: validation(),label: {

                ZStack{

                    Image("top")
                        .resizable()
                        .frame(width: 130, height: 130)
                        .cornerRadius(15)
               

                }
                }
    //                    })
                
                boutonlikes()
               
                Button{

                } label: {

    //                    NavigationLink(destination: validation(),label: {

                ZStack{

                    Image("top")
                        .resizable()
                        .frame(width: 130, height: 130)
                        .cornerRadius(15)
               

                }
                }
    //                    })
                
                boutonlikes()
            }.padding()
            }
        }

    }
}
}
struct favorites_Previews: PreviewProvider {
    static var previews: some View {
        favorites()
    }
}
