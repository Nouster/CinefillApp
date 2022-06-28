//
//  SubscriptionView.swift
//  CinefillApp
//
//  Created by Apprenant 15 on 21/06/2022.
//

import SwiftUI

struct SubscriptionView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var checkout: String = ""
    var body: some View {
        
        
        
        ZStack{
            Color("backgoundcolor")
                .edgesIgnoringSafeArea(.bottom)
            VStack{
                
                VStack{
                
                HStack {
                Text("S'inscrire")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                }
                
                ZStack (alignment: .leading){
                    if  username.isEmpty{
                        Text("Identifiant")
                            .foregroundColor(Color.orange.opacity(0.3))
                        
                    }
                    
                    TextField("", text: $username
                    ).foregroundColor(.white)
                    
                }.padding()
                
                
                VStack{
                Divider()
                    .frame(width: 350, height: 02)
                    .background(.orange)
                
                }
                
                
                
                ZStack (alignment: .leading){
                    if  password.isEmpty{
                        Text("Mot de passe")
                            .foregroundColor(Color.orange.opacity(0.3))
                        
                    }
                    
                    TextField("", text: $password
                    ).foregroundColor(.white)
                    
                    
                        
                    
                    
                }.padding()
               
          
                    
                Divider()
                    .frame(width: 350, height: 02)
                    .background(.orange)
//
//
                    ZStack (alignment: .leading){
                        if  checkout.isEmpty{
                            Text("Confirmer le mot de passe ")
                                .foregroundColor(Color.orange.opacity(0.3))
                            
                        }
                        
                        TextField("", text: $checkout
                        ).foregroundColor(.white)
                        
                        
                           
                          
                       

//                            .padding()
                           
                        
                    }.padding()
                    
                    
                  
                    
                    Divider()
                        .frame(width: 350, height: 02)
                        .background(.orange)
                
//                        .padding()
                    
                }
                .padding()
                
                        Button{
                            
                        } label: {
                            ZStack{
                                
                                
                           
                                Text("Inscription")
                                    .frame(width: 240, height: 40)
                                
                                    .foregroundColor(.white)
                            }
                            
                            
                            
                        } .background(Color.orange)
                            .cornerRadius(10)
                        
                        
                            .padding()
                        
                        HStack{
                            VStack{
                                
                                Divider()
                                
                            }.frame(width: 100, height: 02)
                                .background(.orange)
                            
                            Text("Ou")
                                .foregroundColor(.white)
                            VStack{
                                Divider()
                                
                            }.frame(width: 100, height: 02)
                                .background(.orange)
                            
                            
                        }.padding()
                        Button{
                            
                        } label:   {
                            
                            
                            HStack{
                                Image("Facebook")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 30.0, height: 30.0)
                                    .clipShape(Circle())
                                
                                
                                ZStack{
                                    
                                    
                              
                                    
                                    Text("S'inscrire avec facebook")
                                        .frame(width: 200, height: 40)
                                    
                                        .foregroundColor(.black)
                                    
                                }
                                
                                
                                
                                
                                
                            }
                            
                        } .background(Color.blue)
                            .cornerRadius(10)
                        
                            .padding()
                        
                        
                        
                        
                        
                        
                        Button{
                            
                        } label: {
                            HStack{
                                Image("Google")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 30.0, height: 30.0)
                                    .clipShape(Circle())
                                
                                
                                ZStack{
                                    
                                    Text("S'inscrire avec Google")
                                        .frame(width: 200, height: 40)
                                        .foregroundColor(.black)
                                }
                                
                                
                                
                                
                                
                            }
                            
                        } .background(Color.white)
                            .cornerRadius(10)
                            .padding()
                        
                        
                        Button{
                            
                        } label: {
                            HStack{
                                Image("LOGOS")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 30.0, height: 30.0)
                                    .clipShape(Circle())
                                
                                
                                ZStack{
                                    
                                    
                                    
                                    //        Rectangle()
                                    //
                                    //            .frame(width: 300, height: 40)
                                    //            .foregroundColor(Color.black)
                                    //            .cornerRadius(10)
                                    //
                                    
                                    Text("S'inscrire avec Apple")
                                        .frame(width: 200, height: 45)
                                        .foregroundColor(.white)
                                }
                                
                                
                                
                                
                                
                            }
                            
                        }.background(Color.black)
                            .cornerRadius(10)
                        
                            
                            
                            .padding()
            
                    }
                }
                
                
    }
                
    }
            


    
    
    struct SubscriptionView_Previews: PreviewProvider {
        static var previews: some View {
            SubscriptionView()
        }
    }
