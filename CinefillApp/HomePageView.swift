//
//  HomePageView.swift
//  CinefillApp
//
//  Created by Mohamed Djebali on 21/06/2022.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        ZStack{
            
            Color("backgroundcolorapp")
            
            Button {
                print("Some text")
            } label: {
                HStack{
                Image(systemName: "location.fill")
                    .font(.system(size: 16))
                    .foregroundStyle(LinearGradient (colors: [Color("cinefillorange"), .red], startPoint: .top, endPoint: .bottom))
                
            
                        Text("Toulouse Saint-Alban")
                            .foregroundColor(.white)
                            .font(.system(size: 16))
                        .fontWeight(.semibold)
                        
                  
                    
                    
                    }
                    
                
                
                    
                    
                        
                    }
            
           
                    
                }
            
               
                
                
            }
            
        }

    



struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
