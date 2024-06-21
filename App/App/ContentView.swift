//
//  ContentView.swift
//  CircleTrim
//
//  Created by jo on 6/20/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animateTrim = false
    @State private var circleTrim: CGFloat = 1.0
    
    var body: some View {
        VStack {
            Text("ANIMATE TRIM").font(.title).bold().padding(.top, 10)
            
            Circle()
                .trim(from: 0, to: circleTrim)
                .stroke(Color.red, style: StrokeStyle(lineWidth: 30, lineCap: CGLineCap.round))
                .frame(height: 150)
                .rotationEffect(.degrees(180))
                .animation(.default, value: animateTrim)
                .padding(.bottom, 20)
            
            Button("Animate Trim") {
                animateTrim.toggle()
                circleTrim = animateTrim ? 0.25 : 1
            }
        }
    }
}

#Preview {
    ContentView()
}
