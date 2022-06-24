//
//  HomePageView.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 22/06/2022.
//

import SwiftUI

struct HomePageView: View {
    @StateObject var viewRouter: ViewRouter
    var numberOfImages: Int = 6
    let  timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State var  currentIndex = 0
    
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
    
    var body: some View {
        ZStack{
            
            Color("backgroundcolorapp")
                .edgesIgnoringSafeArea(.bottom)
            
            
            VStack {
                
                Button {
                    print("Something")
                } label: {
                    
                   
                    
                    
                    Image(systemName: "location.fill")
                        .font(.system(size: 16))
                        .foregroundColor(Color("cinefillorange"))
                    Text("Toulouse Saint-Alban")
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                    
                    
                }
                .offset(x: 80, y: 20)
                
                Divider()
                    .frame(width: 120, height: 2)
                    .background(Color("cinefillorange"))
                    .offset(x: 97, y: 10)
                
                
                HStack {
                    Text("Les films à l'affiche")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 16))
                        .offset(x: 10, y: 10)
                    Divider()
                        .frame(width: 150, height: 2)
                        .background(Color("cinefillorange"))
                        .offset(x: -145, y: 30)
                    
                    Spacer()
                    
                    Button {
                        print("Something")
                    } label: {
                        Text("Voir plus")
                            .font(.system(size: 12))
                            .foregroundStyle (LinearGradient(colors: [Color("cinefillorange"), .red, .red], startPoint: .top, endPoint: .bottom))
                            .offset(x: -8, y: 15)
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
                        .frame(width: proxy.size.width, height: proxy.size.height)
                        .onReceive(timer, perform: { _ in
                            next()
                        })
                    
                    
                }
                
                HStack{
                    Text("Les séances les moins chères")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        
                    
                    Spacer()
                    
                    Button {
                        print("Something")
                    } label: {
                        Text("Voir plus")
                            .font(.system(size: 12))
                            .foregroundStyle (LinearGradient(colors: [Color("cinefillorange"), .red, .red], startPoint: .top, endPoint: .bottom))
                           
                    }
                } .padding(.horizontal)
                Divider()
                    .frame(width: 240, height: 2)
                    .background(Color("cinefillorange"))
                    .offset(x: -55, y: -5)
                
                
                SeanceDiscountView(theMovies: moviesArray)
                
                HStack {
                    Text("Les évènements autour de moi")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                       
                    
                    Spacer()
                    
                    Button {
                        print("Something")
                    } label: {
                        Text("Voir plus")
                            .font(.system(size: 12))
                            .foregroundStyle (LinearGradient(colors: [Color("cinefillorange"), .red, .red], startPoint: .top, endPoint: .bottom))
                           
                    }
                } .padding(.horizontal)
                
                Divider()
                    .frame(width: 250, height: 2)
                    .background(Color("cinefillorange"))
                    .offset(x: -55, y: -5)
                
                
                SeanceDiscountView(theMovies: moviesArray)
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
        
        
        
        
    }
}


struct SeanceDiscountView : View{
    var theMovies : [Movies]
    var body: some View {
        ScrollView(.horizontal){
            HStack(spacing: -20){
                ForEach(theMovies){ movie in
                    VStack(spacing: -3){
                        Image(movie.posterMed)
                        
                            .resizable()
                           
                            .scaledToFill()
                           
                            .frame(width: 100, height: 100)
                            
                           
                            .cornerRadius(10)
                            .padding()
                        
                        
        
                        
                        Text("\(movie.movieTitle)")
                            .foregroundColor(.white)
                            .font(.system(size: 12))
                        
                        Text("\(movie.movieLong)")
                            .font(.caption).bold()
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}






struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
        // SeanceDiscountView(theMovies: moviesArray)
    }
}
