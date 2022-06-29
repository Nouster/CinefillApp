//
//  SeanceCalendarView.swift
//  CinefillApp
//
//  Created by apprenant59 on 29/06/2022.
//

import SwiftUI

struct SeanceCalendarView: View {
    @State private var date = Date ()
    var body: some View {
        VStack {
        Text("Sélectionner une séance pour voir \n Top Gun - Maverick")
                .font(.title)
            
        DatePicker("Sélectionner une séance", selection: $date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .labelsHidden()
                .frame(maxHeight: 400)
    }
}
}
struct SeanceCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        SeanceCalendarView()
    }
}
