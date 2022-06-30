//
//  favorites.swift
//  CinefillApp
//
//  Created by Apprenant 15 on 30/06/2022.
//

import SwiftUI

struct favorites: View {
    var back = Color("backgroundcolor")
  
    var product: Likes
 
    var body: some View {
        ZStack{
            Color("backgroundcolor")
                .ignoresSafeArea()
            HStack{
                Rectangle()
                    .frame(width: 130, height: 130)
                    .foregroundColor(.white)
                Rectangle()
                    .frame(width: 130, height: 130)
                    .foregroundColor(.white)
            }
//        ZStack (alignment: .topTrailing){
//            ZStack(alignment: .bottom){
//                List{
//                Image(product.images)
//                    .resizable()
//                    .cornerRadius(20)
//                    .frame(width: 180)
//                    .scaledToFit()
//                
//                
//                VStack(alignment: .leading){
//                    Text(product.names)
//                        .bold()
//                    
//                    
//                }
//                .padding()
//                .frame(width: 180, alignment: .leading)
//                .background(.ultraThickMaterial)
//                .cornerRadius(20)
//            }
//            .frame(width: 180, height: 250)
//            .shadow(radius: 3)
//            
//            Button{
//                
//                
//            } label: {
//                Image(systemName: "plus")
//                    .padding()
//                    .foregroundColor(.white)
//                    .background(.black)
//                    .cornerRadius(50)
//                    .padding()
//            }
//            }
//        }
    }
}
}
struct favorites_Previews: PreviewProvider {
    static var previews: some View {
        favorites(product: likey[0])
    }
}
