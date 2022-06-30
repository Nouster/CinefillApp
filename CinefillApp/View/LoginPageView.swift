//
//  LoginPageView.swift
//  CinefillApp
//
//  Created by apprenant59 on 22/06/2022.
//

import SwiftUI

struct LoginPageView: View {
    
    
    @State var username: String = ""
    @State var password: String = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    
    var body: some View {
        
        ZStack{
            Color("background")
                .edgesIgnoringSafeArea(.bottom)
            VStack{
                
                VStack{
                    
                    HStack {
                        Text("Se connecter")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        
                    }
                    
                    ZStack (alignment: .leading){
                        if  username.isEmpty{
                            Text("Identifiant")
                                .foregroundColor(Color.white.opacity(0.3))
                            
                        }
                        
                        TextField("Identifiant", text: $username
                        ).foregroundColor(.white)
                            .border(.red, width: CGFloat(wrongUsername))
                        
                    }.padding()
                    
                    
                    VStack{
                        Divider()
                            .frame(width: 350, height: 02)
                            .background(Color("cinefillorange"))
                        
                    }
                    
                    ZStack (alignment: .leading){
                        if  password.isEmpty{
                            Text("Mot de passe")
                                .foregroundColor(Color.white.opacity(0.3))
                            
                        }
                        
                        SecureField("", text: $password
                        ).foregroundColor(.white)
                            .border(.red, width: CGFloat(wrongPassword))
                        
                    }.padding()
                    
                    
                    
                    Divider()
                        .frame(width: 350, height: 02)
                        .background(Color("cinefillorange"))
                    
                    
                }
                .padding()
                
                Button("Connexion") {
                    authenticationUser(username: username, password: password)
                }
                
                
                .frame(width: 320, height: 43)
                .foregroundColor(.white)
                .background(Color("cinefillorange"))
                .cornerRadius(10)
                
                
                .padding(.top)
                
                
//                NavigationLink(destination: View?? , isActive: $showingLoginScreen) {
//
//                    EmptyView()
//
//                }
                
                
                
                
                VStack{
                    Button{
                        
                    } label: {
                       
                        
                        
                        
                        Text("Mot de passe oublié ? ")
                            .frame(width: 240, height: 40)
                            .font(.footnote)
                            .foregroundColor(.white)
                       
                    }
                    
                    HStack{
                        VStack{
                            
                            Divider()
                            
                        }.frame(width: 100, height: 02)
                            .background(Color("cinefillorange"))
                        
                        Text("Ou")
                            .foregroundColor(.white)
                        VStack{
                            Divider()
                            
                        }.frame(width: 100, height: 02)
                            .background(Color("cinefillorange"))
                        
                        
                    }.padding()
                    
                    Button{
                        
                    } label:   {
                        
                        Label {
                            Text("\t\t\tFacebook")
                        } icon: {
                            Image("facebook").resizable().frame(width: 30, height: 30)
                        }.frame(width: 300, height: 30, alignment: .leading)
                       
                        
                        
                    }.buttonStyle(.borderedProminent).tint(.blue).buttonBorderShape(.roundedRectangle).padding()
                    
                    Button{
                        
                    } label:   {
                        Label {
                            Text("\t\t\tGoogle").foregroundColor(.black)
                        } icon: {
                            Image("google").resizable().frame(width: 30, height: 30).clipShape(Circle())
                        }.frame(width: 300, height: 30, alignment: .leading)
                        
                        
                    }.buttonStyle(.borderedProminent).tint(.white).buttonBorderShape(.roundedRectangle).padding()
                    
                    Button{
                        
                    } label:   {
                        Label {
                            Text("\t\t\tApple Pay")
                        } icon: {
                            Image(systemName:"applelogo").font(.title)
                        }.frame(width: 300, height: 30, alignment: .leading)
                        
                        
                    }.buttonStyle(.borderedProminent).tint(.black).buttonBorderShape(.roundedRectangle).padding()
                    
                    
                }
            }
//            .navigationBarHidden(true)
            
            
        }
        
    }
    func authenticationUser(username: String, password: String){
        
        if username.lowercased() == "Sarah" {
            wrongUsername = 0
            if password.lowercased() == "cinefillapp" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
    
    
}



struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}
