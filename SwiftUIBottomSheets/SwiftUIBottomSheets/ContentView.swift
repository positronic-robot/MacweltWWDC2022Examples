//
//  ContentView.swift
//  SwiftUIBottomSheets
//
//  Created by André Martin on 12.06.22.
//
import SwiftUI

struct ContentView: View {
    
    @State private var showInfo = false
    
    var body: some View {
        Button("Zeige Infos") {
            showInfo.toggle()
        }
        // Das Bottom-Sheet hangt hier als Modifier an einem Button
        .sheet(isPresented: $showInfo) {
            Text ("Info: Macwelt-Coding-Examples mit SwiftUI 4")
                .presentationDetents([.fraction(0.1), .fraction(0.8)])
        }
    }
}

