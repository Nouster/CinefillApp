//
//  Payment.swift
//  CinefillApp
//
//  Created by Apprenant 15 on 28/06/2022.
//

import SwiftUI

struct Payment: View {
    
    @State var credit: String = ""
    @State var month: String = ""
    @State var checkout: String = ""
    
    var body: some View {
        
        ZStack{
            
            Color("backgroundcolor")
                .edgesIgnoringSafeArea(.bottom)
            
            
            VStack{
                
                Text("UCG Cinéma la roquette")
                    .foregroundColor(.white)
                
                Divider()
                    .frame(width: 500, height: 2)
                    .background(.orange)
                Image("carte 1")
                
                    .padding()
                Text("TOP GUN : Maverick")
                    .foregroundColor(.white)
                Text("7,00 e")
                
                    .foregroundColor(.white)
                    .padding()
                
                Divider()
                    .frame(width: 500, height: 2)
                    .background(.orange)
                
                
                
                HStack{
                    Image(systemName: "creditcard")
                    Image(systemName: "creditcard")
                    Image(systemName: "creditcard")
                    Image(systemName: "creditcard")
                    
                    
                    
                    
                }.padding()
                
                
            }
        }
    }
}



struct Payment_Previews: PreviewProvider {
    static var previews: some View {
        Payment()
    }
}
