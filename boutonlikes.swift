//
//  boutonlikes.swift
//  CinefillApp
//
//  Created by Apprenant 15 on 30/06/2022.
//

import SwiftUI

struct boutonlikes: View {

        
            @State var isPressed = true
            var body: some View {
                ZStack {
                    Image(systemName: "heart.fill")
                        .opacity(isPressed ? 1 : 0)
                        .scaleEffect(isPressed ? 1.0 : 0.1)
//                        .animation(.linear)
                    Image(systemName: "heart")
                }.font(.system(size: 30))
                    .onTapGesture {
                        self.isPressed.toggle()
                }
                .foregroundColor(isPressed ? .orange : .orange)
            }
        }
    


struct boutonlikes_Previews: PreviewProvider {
    static var previews: some View {
        boutonlikes()
    }
}
