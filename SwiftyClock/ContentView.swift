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
                
                let drawRect = CGRect(origin: .zero, size: size)
                let radius = min(size.width, size.height) / 2
                
                let boarderThickness = radius / 25
                let innerBlackRingSize = radius / 6
                let centerSize = radius / 40
                
                let hourHandLength = radius / 2.5
                let minuteHandLength = radius / 1.5
                
                let secondHandLength = radius * 1.1
                let secondHandWidth = radius / 25
                
                context.stroke(Circle().inset(by: boarderThickness / 2).path(in: drawRect), with: .color(.primary), lineWidth: boarderThickness)
                context.translateBy(x: drawRect.maxX, y: drawRect.midY)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
