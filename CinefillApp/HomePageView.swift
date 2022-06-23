//
//  HomePageView.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 22/06/2022.
//

import SwiftUI

struct HomePageView: View {
    private var numberOfImages: Int = 6
    private let  timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var  currentIndex = 0
    func previous (){
        withAnimation{
            currentIndex = currentIndex > 0 ? currentIndex - 1 : numberOfImages - 1
        }
    }
    func next() {
        withAnimation{
            currentIndex = currentIndex < numberOfImages ? currentIndex + 1 : 0
        }
    }
    
    var controls: some View {
        HStack{
            Button {
                previous()
            } label: {
                
            }
            Spacer()
                .frame(width: 100)
            Button {
                next()
            } label: {
                
            }
            
        }.accentColor(.primary)
    }
    
    var body: some View {
        ZStack{
            
            Color("backgroundcolorapp")
            
            VStack {
                
                
                
                
                
                
                
                Button {
                    print("Something")
                } label: {
                    HStack{
                        Image(systemName: "location.fill")
                            .font(.system(size: 20))
                            .foregroundColor(Color("cinefillorange"))
                            .offset(x: 90, y: 20)
                        Text("Toulouse Saint-Alban")
                            .foregroundColor(.white)
                            .offset(x: 80, y: 20)
                    }
                    
                    
                    
                }
                
                Divider()
                    .frame(width: 157, height: 2)
                    .background(Color("cinefillorange"))
                    .offset(x: 97, y: 10)
                
                
                Button {
                    print("Something")
                } label: {
                    VStack{
                        Text("Les films à l'affiche")
                        
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .offset(x: -90, y: 20)
                            .padding()
                        Divider()
                            .frame(width: 160, height: 2)
                            .background(Color("cinefillorange"))
                            .offset(x: -90, y: 5)
                    }
                    
                }
                
                
                
                
                
                
                
                GeometryReader { proxy in
                    
                    
                    
                    TabView (selection: $currentIndex) {
                        ForEach ( 1..<6) {
                            num in Image ("\(num)")
                                .resizable()
                                .scaledToFill()
                            
                                .tag(num)
                        }
                        
                    } .tabViewStyle(PageTabViewStyle())
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .padding()
                        .frame(width: proxy.size.width, height: proxy.size.height / 3)
                        .onReceive(timer, perform: { _ in
                            next()
                        })
                    controls
                }
                
                
                
            }
            
            
            
            
            
            VStack {
                VStack{
                    Text("Les séances les moins chères")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .offset(x: -50)
                    Divider()
                        .frame(width: 240, height: 2)
                        .background(Color("cinefillorange"))
                        .offset(x: -50)
                    
                }
                ScrollView(.horizontal){
                    //On affiche la liste de la vue SeanceDiscountView
                }
                
                
            }
            
            
        }
        
        
        
        
    }
}


struct SeanceDiscountView : View{
    var theMovie :
    var body: some View {
        VStack{
            Image("image")
            Text("Nom \n Prix")
        }
    }
}






struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
