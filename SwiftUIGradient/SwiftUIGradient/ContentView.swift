//
//  ContentView.swift
//  SwiftUIGradient
//
//  Created by André Martin on 13.06.22.
//

import SwiftUI

struct ContentView: View {
    let farben: [Color] = [.red, .orange, .yellow, .mint, .green, .blue, .purple, .indigo]
    var body: some View {
        HStack {
            VStack {
                //linke Reihe mit Verlauf
                ForEach(farben, id: \.self) { farbe in
                    Circle().fill(farbe.gradient)
                }
            }
            VStack {
                //mittlere Reihe mit Verlauf und Schatten außen
                ForEach(farben, id: \.self) { farbe in
                    Circle().fill(farbe.gradient.shadow(.drop(color: .black, radius: 5)))
                }
            }
            VStack {
                //rechte Reihe ohne Verlauf aber mit Schatten nach innen
                ForEach(farben, id: \.self) { farbe in
                    Circle().fill(farbe.shadow(.inner(color: .black, radius: 20)))
                }
            }
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
