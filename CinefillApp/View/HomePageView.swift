//
//  HomePageView.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 22/06/2022.


import SwiftUI
import AVKit


struct HomePageView: View {
    @Environment(\.presentationMode) var presentation
    @StateObject var moviesClass: movieClass
    @StateObject var eventArray: eventClass
    @StateObject var viewRouter: ViewRouter
    @StateObject var seanceClass: SeanceClass
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
        NavigationView{
            ZStack{
                
                Color("background")
                    .edgesIgnoringSafeArea(.bottom)
                
                VStack {
                    NavigationLink {
                        InviteConnexionView()
                    } label: {
                        Image(systemName: "location.fill")
                            .font(.system(size: 16))
                            .foregroundColor(Color("cinefillorange"))
                        Text("Toulouse Saint-Alban")
                            .foregroundColor(.white)
                            .font(.system(size: 12))
                    }

                    .offset(x: 80, y: 20)
                    .padding(.bottom)
                    
                    Divider()
                        .frame(width: 120, height: 2)
                        .background(Color("cinefillorange"))
                        .offset(x: 97)
                    
                    Group{
                        
                        HStack{
                            Text("Les films à l'affiche")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                
                            
                            Spacer()
                            
                            NavigationLink {
                                
                                AllMoviesView(moviesClass: moviesClass)
                                
                            } label: {
                                Text("Voir plus...")
                                    .font(.system(size: 12))
                                    .foregroundStyle (LinearGradient(colors: [Color("cinefillorange"), .red, .red], startPoint: .top, endPoint: .bottom))
                                   
                            }
                        } .padding(.horizontal)
                             Divider()
                            .frame(width: 160, height: 2)
                            .background(Color("cinefillorange"))
                            .offset(x: -98, y:5)
                           
                        
                        GeometryReader { proxy in
                                           
                                           TabView (selection: $currentIndex) {
                                               //                        ForEach (moviesArray) { aMovie in
                                               //                            Text("A Movie")
                                               //
                                               //
                                               //                        }
                                               
                                               
                                               ForEach(0..<5){ num in
                                                   
                                                 //  ForEach(moviesArray) { aMovie in
                                                   PosterOnScreenView(theMovie: moviesClass.moviesArray[num])//theMovie: movieOne).tag(num)
                                                 //  }
                                               }
                                               
                                           } .tabViewStyle(PageTabViewStyle())
                                               .clipShape(RoundedRectangle(cornerRadius: 25))
                                               .padding()
                                               .frame(width: proxy.size.width, height: proxy.size.height * 1.5 )
                                               .onReceive(timer, perform: { _ in
                                                   next()
                                               })
                                           //  controls
                                           
                        }
                        .padding(.bottom, 70)
                        
                    }
                    
                    HStack{
                        
                        Text("Les séances les moins chères")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        NavigationLink {
                            
                            AllSeanceView(seancesClass: SeanceClass())
                            
                        } label: {
                            Text("Voir plus...")
                                .font(.system(size: 12))
                                .foregroundStyle (LinearGradient(colors: [Color("cinefillorange"), .red, .red], startPoint: .top, endPoint: .bottom)) 
                        }
                    } .padding(.horizontal)
                 
                    Divider()
                        .frame(width: 240, height: 2)
                        .background(Color("cinefillorange"))
                        .offset(x: -57, y: 5)
                    
                    SeanceDiscountView(seances: seanceClass.seancesArray)
                    HStack {
                        Text("Les évènements autour de moi")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                           
                        
                        Spacer()
                        NavigationLink {
                            
                            AllEventsView(eventGroup: eventArray)
                            
                        }
                         label: {
                            Text("Voir plus...")
                                .font(.system(size: 12))
                                .foregroundStyle (LinearGradient(colors: [Color("cinefillorange"), .red, .red], startPoint: .top, endPoint: .bottom))
                               
                        }
                    } .padding(.horizontal)
                    
                    Divider()
                        .frame(width: 250, height: 2)
                        .background(Color("cinefillorange"))
                        .offset(x: -55, y: 5)
                    EventScrollView(events: eventArray.eventsPreviewArray)
                }
                
            }
        }
        .navigationBarHidden(true)
        }
}
struct PosterOnScreenView : View {
    var theMovie : Movies
    //  var moviesWithTrailerArray = [movieOne,movieTwo]
    var body: some View {
        ZStack{
            Image ("1")
                .resizable()
                .scaledToFill()
            Image(theMovie.posterBig)
                .resizable()
                .scaledToFill()
                .frame(width: 240, height: 100, alignment: .topTrailing)
                .clipped()
                .offset(x: 5, y: -35)
            OpenModalVideoLive()
            // .tag(theNum)
        }//.frame(width: 100, height: 100 )
    }
}

struct MyView: View {
    // @State private var isNotPlaying = true
    // var theImage : Image
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VideoPlayer(player: AVPlayer(url:  URL(string: "https://bit.ly/swswift")!))
        Button {
            dismiss()
        } label: {
            Image(systemName: "x.circle.fill")
        }
        
        
    }
}
struct OpenModalVideoLive: View {
    //  var theMovie : Movies
    // Quand cette variable est true la modal est présente
    
    @State private var modalPresent = false
    var body: some View {
        Button {
            
            modalPresent.toggle()
        } label: {
            Image(systemName:"play.circle.fill")
        }.sheet(isPresented: $modalPresent) {
            // Vue affichée par la modal
            MyView()
        }.buttonStyle(.bordered)
            .tint(Color("cinefillorange"))
            .buttonBorderShape(.roundedRectangle)
            .font(.system(size: 32))
            .background(.white)
            .clipShape(Circle())
    }
}

struct SeanceDiscountView : View{
    var seances: [Seances]
    var body: some View {
        ScrollView(.horizontal){
            HStack(spacing: -20){
                ForEach(seances){ seance in
                    VStack(spacing: -3){
                        Image(seance.seanceSmallPicture)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                            .padding()
                        
                        Text("\(seance.seanceMovie)")
                            
                            .font(.system(size: 12))
                            .foregroundColor(Color("cinefillorange"))
                        
                        Text("\(seance.seancePrice) €")
                            .font(.caption).bold()
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

struct EventScrollView : View{
    
    @EnvironmentObject var eventArray: eventClass
    var events : [Events]
    var body: some View {
        ScrollView(.horizontal){
            HStack(spacing: -20){
                
                ForEach(events){ event in
                    VStack(spacing: -3){
                        Image(event.eventsPictures)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                            .padding()
                        
                        Text("\(event.eventsName)")
                            .foregroundColor(Color("cinefillorange"))
                            .font(.system(size: 12))
                            .frame(width: 100)
                            .padding(.bottom, 10)
                            
                            
                        
                        Text("\(event.eventsCategorie)")
                            .font(.caption).bold()
                            .foregroundColor(.white)
                            .font(.system(size: 12))
                            .padding(.bottom, 10)
                        
                    }
                }
            }.navigationBarHidden(true)
                
        }
    }
}




struct TestView_Previews: PreviewProvider {
    static var previews: some View {
//        HomePageView(moviesClass: movieClass(), eventArray: eventClass(), viewRouter: ViewRouter())
        CustomTabBarView()
         
    }
}
