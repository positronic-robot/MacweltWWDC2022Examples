//
//  Data.swift
//  SwiftUICharts
//
//  Created by André Martin on 11.06.22.
//
import SwiftUI

struct wmDaten: Identifiable {
    var id = UUID()
    var land: String
    var date: Date
    var tore: Int
    
    init(land: String, jahr: Int, tore: Int) {
        let calendar = Calendar.autoupdatingCurrent
        self.land = land
        self.date = calendar.date(from: DateComponents(year: jahr))!
        self.tore = tore
    }
}

// die Statistikdaten stammen vom DFB und der FIFA
// keine Gewähr auf die Richtigkeit!
var data: [wmDaten] = [
    // insgesamt geschossene Tore pro WM seit 1990
    wmDaten(land: "Gesamt", jahr: 1990, tore: 115),
    wmDaten(land: "Gesamt", jahr: 1994, tore: 141),
    wmDaten(land: "Gesamt", jahr: 1998, tore: 171),
    wmDaten(land: "Gesamt", jahr: 2002, tore: 161),
    wmDaten(land: "Gesamt", jahr: 2006, tore: 147),
    wmDaten(land: "Gesamt", jahr: 2010, tore: 143),
    wmDaten(land: "Gesamt", jahr: 2014, tore: 171),
    wmDaten(land: "Gesamt", jahr: 2018, tore: 169),
    // Tore für Deutschland
    wmDaten(land: "Deutschland", jahr: 1990, tore: 15),
    wmDaten(land: "Deutschland", jahr: 1994, tore: 9),
    wmDaten(land: "Deutschland", jahr: 1998, tore: 8),
    wmDaten(land: "Deutschland", jahr: 2002, tore: 14),
    wmDaten(land: "Deutschland", jahr: 2006, tore: 14),
    wmDaten(land: "Deutschland", jahr: 2010, tore: 16),
    wmDaten(land: "Deutschland", jahr: 2014, tore: 18),
    wmDaten(land: "Deutschland", jahr: 2018, tore: 2),
    // Tore für England
    wmDaten(land: "England", jahr: 1990, tore: 8),
    wmDaten(land: "England", jahr: 1994, tore: 0),
    wmDaten(land: "England", jahr: 1998, tore: 7),
    wmDaten(land: "England", jahr: 2002, tore: 6),
    wmDaten(land: "England", jahr: 2006, tore: 6),
    wmDaten(land: "England", jahr: 2010, tore: 3),
    wmDaten(land: "England", jahr: 2014, tore: 1),
    wmDaten(land: "England", jahr: 2018, tore: 12),
]

