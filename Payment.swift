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
    @State private var isSelected: Bool = false
    @State private var iNotSelected: Bool = false
    var body: some View {
        
        ZStack{
            
            Color("backgroundcolor")
                .edgesIgnoringSafeArea(.bottom)
            
            
            VStack{
                
                Text("UCG Cinéma la roquette")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                
                Divider()
                    .frame(width: 500, height: 5)
                    .background(.orange)
                
//                    .padding()
                
                Image("top")
                    .resizable()
                    .frame(width: 300, height: 150)
                
                Text("TOP GUN : Maverick")
                    .foregroundColor(.white
                    )
                Text("7,00 €")
                
                    .foregroundColor(.white)
                
                
                Divider()
                    .frame(width: 400, height: 5)
                    .background(.orange)
                
                
//                    .padding()
                HStack{
                    Image("CB")
                        .resizable()
                        .frame(width: 50, height: 40)
                        .cornerRadius(5)
                    
                    Image("VISA")
                        .resizable()
                        .frame(width: 50, height: 40)
                        .cornerRadius(5)
                    Image( "MC")
                        .resizable()
                        .frame(width: 50, height: 40)
                        .cornerRadius(5)
                    Image( "AP")
                        .resizable()
                        .frame(width: 50, height: 40)
                        .cornerRadius(5)
                    
                }.padding()
                
                VStack{
                    TextField("Numero de carte ", text: $credit )
                        .padding()
                        .background(Color.orange.opacity(0.7).cornerRadius(10))
                        .foregroundColor(.white)
                  
                        .frame(width: 300, height: 50)
                    //
                    
                    TextField("MM/AA", text: $month )
                        
                        .padding()
                        .background(Color.orange.opacity(0.7).cornerRadius(10))
                        .foregroundColor(.white)
//
                        .frame(width: 300, height: 50)
                        .padding()
                    
                    TextField("123", text: $checkout )
                        .padding()
                        .background(Color.orange.opacity(0.7).cornerRadius(10))
                        .foregroundColor(.white)
                      
                        .frame(width: 300, height: 50)
                    
                    VStack{
                        HStack{
                    Toggle("Enregistrer ma carte ", isOn: $isSelected)
                            .foregroundColor(.white)
                        }.padding()
                    }.padding(.horizontal, 65)
                    
                    
                    Button{
                   } label: {
                    ZStack{
                    Rectangle()
                    
                        .frame(width: 300, height: 50)
                    
                        .foregroundColor(.orange.opacity(0.7))
                
                        .cornerRadius(15)
                        
                        
                        Text("Payer 7,00€")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    }
                   }.padding()
                    Text("ANNULER LE PAIMENT ")
                        .font(.system(size: 14))
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

