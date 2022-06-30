//
//  CustomTabBar.swift
//  Projet OLIS
//
//  Created by apprenant50 on 13/05/2022.
//

import SwiftUI

struct CustomTabBarView: View {
    @StateObject var moviesClass = movieClass()
    @StateObject var eventArray = eventClass()
    @StateObject var viewRouter = ViewRouter()
    @State var showPopUp = false
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
               
                Spacer()
                switch viewRouter.currentPage {
                case .cinema :
                    HomePageView(eventArray: eventArray, viewRouter: viewRouter)
                    
                case .profile :
                    ProfileView()
                    
                case .cart :
                    CartView()
                    
                case .films :
                    AllMoviesView()
                    
                case .events :
                    AllEventsView(eventGroup: eventArray)
                    
                    
                }
                Spacer()
                
                ZStack {
                    if showPopUp {
                        HStack(spacing : 50){
                            PlusMenu(viewRouter:viewRouter , assignedPage: .films, widthAndheight: geometry.size.width/6, systemIconName: "list.and.film", tabName: "Films")
                                .offset(y: -geometry.size.height/6)
                            
                            PlusMenu(viewRouter: viewRouter, assignedPage: .cinema, widthAndheight: geometry.size.width/6, systemIconName: "film.fill", tabName: "Cinema")
                                .offset(y: -geometry.size.height/6)
                            
                            PlusMenu(viewRouter: viewRouter, assignedPage: .events, widthAndheight: geometry.size.width/6, systemIconName: "calendar", tabName: "Event")
                                .offset(y: -geometry.size.height/6)
                            
                        }
                        .transition(.scale)
                    }
                    HStack{
                        Spacer()
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .profile,width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "person.fill", tabName: "Profil")
                        Spacer()
                        ZStack{
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: geometry.size.width/7, height: geometry.size.height/7)
                                .shadow(radius: 8)
                            Image(systemName: "list.dash")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: geometry.size.width/9-6, height: geometry.size.height/9-6)
                                .rotationEffect(Angle(degrees: showPopUp ? 360 : 0))
                                .foregroundStyle(showPopUp ? LinearGradient(colors: [Color("cinefillorange"), .red, .red], startPoint: .top, endPoint: .bottom) : LinearGradient(colors: [Color("background")], startPoint: .top, endPoint: .bottom) )
                            

                        }
                        .offset(y:-geometry.size.height/16/8)
                        .onTapGesture {
                            withAnimation {
                                showPopUp.toggle()
                                
                            }
                            
                        }
                        
                        Spacer()
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .cart,width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "cart.fill", tabName: "Panier")
                        Spacer()
                    }
                    //                    .background(.white)
                    .frame(width: geometry.size.width, height:  60)
                    
                    
                }
                
            }
        } .edgesIgnoringSafeArea(.bottom)
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBarView(viewRouter: ViewRouter())
    }
}

struct PlusMenu : View {
    @StateObject var viewRouter: ViewRouter
    let assignedPage :Page
    
    let widthAndheight : CGFloat
    
    let systemIconName, tabName:String
    
    var body: some View {
        
        
        ZStack{
            Circle()
                .foregroundColor(.white)
                .frame(width: widthAndheight, height: widthAndheight)
            VStack{
                Image(systemName: systemIconName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(15)
                    .frame(width: widthAndheight, height: widthAndheight)
                    .foregroundColor(Color("background"))
                Text(tabName)
                    .font(.footnote)
                    .padding(.top, -25.0)
            }
            
        }
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
        .foregroundStyle(viewRouter.currentPage == assignedPage ? LinearGradient(colors: [Color("cinefillorange"), .red, .red], startPoint: .top, endPoint: .bottom) : LinearGradient(colors: [Color("background")], startPoint: .top, endPoint: .bottom) )
        
        
        
    }
}

struct TabBarIcon: View {
    @StateObject var viewRouter: ViewRouter
    let assignedPage :Page
    
    let width, height: CGFloat
    let systemIconName, tabName:String
    
    var body: some View {
        VStack{
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            Text(tabName)
                .font(.footnote)
            Spacer()
        }
        .padding(.vertical, 20)
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
        .foregroundStyle(viewRouter.currentPage == assignedPage ? LinearGradient(colors: [Color("cinefillorange"), .red, .red], startPoint: .top, endPoint: .bottom) : LinearGradient(colors: [Color("background")], startPoint: .top, endPoint: .bottom) )
        
    }
}


struct CartView: View {
    var body: some View{
        ZStack{
            
            Color("background")
            Text("Car View")
        }
        
    }
}
struct FilmView: View {
    var body: some View{
        ZStack{
            
            Color("background")
            Text("Films View")
        }
        
    }
}

