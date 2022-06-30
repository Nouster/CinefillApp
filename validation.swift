//
//  validation.swift
//  CinefillApp
//
//  Created by Apprenant 15 on 29/06/2022.
//


    
        import SwiftUI
struct validation: View{

    var body: some View {

        ZStack{
            
        
            Color("backgroundcolor")
                .edgesIgnoringSafeArea(.all)
            VStack{
//
                Image("valide")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                    Text("MERCI DE VOTRE ACHAT")
                    .foregroundColor(.white)
               
                                 }
                  }
                  
                }
}
    
struct validation_Previews: PreviewProvider {
    static var previews: some View {
        validation()
    }
}
