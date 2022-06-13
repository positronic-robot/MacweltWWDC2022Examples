//
//  ContentView.swift
//  SwiftUIVariableIcons
//
//  Created by André Martin on 13.06.22.
//

import SwiftUI

struct ContentView: View {
    @State private var wert = 0.0
    var body: some View {
        // Wert in Prozent und auf eine Nachkommastelle beschränken
        let wertString = String(format: "%.1f", wert * 100)
        VStack {
            HStack {
                Image (systemName: "wifi", variableValue: wert)
                Image (systemName: "waveform", variableValue: wert)
                Image (systemName: "aqi.low", variableValue: wert)
                Image (systemName: "chart.bar.fill", variableValue: wert)
            }
            Slider (value: $wert)
        }
        .font (.system(size: 64))
        .foregroundColor (.red)
        .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
        Text("Wert: \(wertString) %")
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
