//
//  ContentView.swift
//  SwiftyClock
//
//  Created by Francisco Serrano on 1/22/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TimelineView(.animation) { timeline in
            Canvas { context, size in
                let clock = ClockAngles(for: timeline.date)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
