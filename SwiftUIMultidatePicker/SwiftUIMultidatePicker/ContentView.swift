//
//  ContentView.swift
//  SwiftUIMultidatePicker
//
//  Created by André Martin on 12.06.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var termine = Set<DateComponents>()
    @Environment (\.calendar) var kalender
    
    // Die Termine werden hier als String aus den Daten des Pickers zusammengebaut
    var ausgewählteTermine: String {
        termine.compactMap { components in
            kalender.date(from: components)?.formatted(date: .long, time: .omitted)
        }.formatted()
    }
    
    var body: some View {
        // im Vstack sind der DatePicker und ein Text für die
        // angewählten Termine
        VStack {
            MultiDatePicker("Mehrere Termine auswählen", selection: $termine)
            Text(ausgewählteTermine)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
