//
//  ContentView.swift
//  SwiftUIAnyLayout
//
//  Created by André Martin on 13.06.22.
//

import SwiftUI

struct ContentView: View {
    @Environment (\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        
        let layout = horizontalSizeClass == .regular ? AnyLayout (HStack()) : AnyLayout (VStack())
        
        layout {
            Image (systemName: "figure.walk").foregroundColor(.blue)
            Image (systemName: "figure.run").foregroundColor(.red)
            Image (systemName: "figure.roll").foregroundColor(.yellow)
            Image (systemName: "figure.archery").foregroundColor(.black)
            Image (systemName: "figure.badminton").foregroundColor(.brown)
            Image (systemName: "figure.basketball").foregroundColor(.cyan)
            Image (systemName: "figure.equestrian.sports").foregroundColor(.gray)
            Image (systemName: "figure.outdoor.cycle").foregroundColor(.green)
        }
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
