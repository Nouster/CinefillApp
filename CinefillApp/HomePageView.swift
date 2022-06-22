//
//  HomePageView.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 22/06/2022.
//

import SwiftUI

struct HomePageView: View {
    private var numberOfImages: Int = 5
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
                Image(systemName: "chevron.left")
            }
            Spacer()
                .frame(width: 100)
            Button {
                next()
            } label: {
                Image(systemName: "chevron.right")
            }

        }.accentColor(.primary)
    }
    
    var body: some View {
        ZStack{
            Color("backgroundcolorapp")
        GeometryReader { proxy in
           
            TabView (selection: $currentIndex) {
                ForEach ( 1..<numberOfImages) {
                    num in Image ("\(num)")
                        .resizable()
                        .scaledToFill()
                        .tag(num)
                    }
            } .tabViewStyle(PageTabViewStyle())
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .padding()
                .frame(width: proxy.size.width, height: proxy.size.height / 3)
                .onReceive(timer, perform: { _ in
                    next()
                })
                controls
            }
        }
}
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
