//
//  ContentView.swift
//  SwiftUIFontColorAnimation
//
//  Created by André Martin on 13.06.22.
//

import SwiftUI

struct ContentView: View {
    @State private var umschalten = false
    var body: some View {
        VStack {
            Text ("Textanimationen")
                .font (.largeTitle.bold())
            // hier animieren wir die Schriftdicke
                .fontWeight(umschalten ? .heavy : .ultraLight)
            Text ("mit SwiftUI 4")
                .font (.largeTitle.bold())
            // hier animieren wir die Schriftfarbe
                .foregroundColor (umschalten ? .yellow : .blue)
            Button("Animiere Schrift") {
                withAnimation {
                    umschalten.toggle ()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
