//
//  ContentView.swift
//  SwiftUICharts
//
//  Created by André Martin on 11.06.22.
//

import Charts
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        // Überschrift
        Text("SwiftUI Charts")
            .font(.largeTitle)
        
        // Die Charts sind in einer Scrollviewzusammengefasst
        // dadurch kann man sie im Querformat scrollen
        ScrollView {
            // in der Liste "data" befinden sich die Daten
            // sie sind in eine eigene Swift-Datei "Data.swift" ausgelagert
            // auch die Definitionen der Datenstruktur liegt in "Data.swift"
            Chart(data) {
                // Liniendiagramm
                LineMark(
                    x: .value("Jahr", $0.date), // X-Achse: Jahr der WM
                    y: .value("Tore", $0.tore) // Y-Achse: geschossene Tore
                )
                .foregroundStyle(by: .value("Land", $0.land)) // der Style ändert sich pro Land
            }
            .frame(height: 300)
            .padding()
            
            Chart(data) {
                // Balkendiagramm
                BarMark(
                    x: .value("Jahr", $0.date), // X-Achse: Jahr der WM
                    y: .value("Tore", $0.tore) // Y-Achse: geschossene Tore
                )
                .foregroundStyle(by: .value("Land", $0.land)) // der Style ändert sich pro Land
            }
            .frame(height: 300)
            .padding()
        }
        
    }
}
