//
//  Tickets.swift
//  CinefillApp
//
//  Created by Apprenant 15 on 23/06/2022.
//

import SwiftUI

struct TicketView: View {
    @State var showShareSheet: Bool = false
    var body: some View {
        
      
                
        ZStack{
            
            Color("background")
                .edgesIgnoringSafeArea(.top)
              
            
            VStack{
                HStack(alignment: .top){
                    Text("Mes Billets")
                        .foregroundColor(.white)
                        .font(.title)
                    
                    
                    Button {
                        showShareSheet.toggle()
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                            .font(.system(size: 24))
                            .foregroundColor(Color("cinefillorange"))
                    }.sheet(isPresented: $showShareSheet, content:  { ActivityViewController(itemsToShare: [""]) })
                    
                    
                        .foregroundColor(Color("cinefillorange"))
                        .font(.title)
                }.padding()
                
                
                Divider()
                    .frame(width: 175, height: 2)
                    .background(Color("cinefillorange"))
                
                Spacer()
                
                
                
                ZStack{
                    Image("qrcode")
                    
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 250.0, height: 250.0, alignment: .center)
                        .border(Color("cinefillorange"), width: 3.0)
                    
                        .clipped()
                    
                    
                    
                }.padding(50)
                
                Spacer()
                VStack(alignment: .leading){
                    Text("TOP GUN MAVERICK")
                        .foregroundColor(.white)
                    
                    Divider()
                        .frame(width: 170, height: 2)
                        .background(Color("cinefillorange"))
                    
                    Text(("Top Gun Maverick Cinéma UGC La Roquette                           Le \(14)/06/2022 à \( 15)H\(45)                                       Tarif : \(8),\(0)\(0)€ "
                          
                         ))
                    
                    .foregroundColor(.white)
                    
                    
                    
                }.padding()
                Spacer()
            }
        }
        }
    }


struct Tickets_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}



