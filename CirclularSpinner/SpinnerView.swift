//
//  SpinnerView.swift
//  CirclularSpinner
//
//  Created by Sanjeev Bharti on 12/1/23.
//

import SwiftUI

struct SpinnerView: View {
    @State private var startRotation = false
    
    private let height: CGFloat
    private let clockwise: Bool
    private let lineWidth: CGFloat
    private let trimSpace: CGFloat
    
    init(height: CGFloat = 40.0, clockwise: Bool = false, lineWidth: CGFloat = 10.0, trimSpace: CGFloat = 0.0) {
        self.height = height
        self.clockwise = clockwise
        self.lineWidth = lineWidth
        self.trimSpace = trimSpace
    }
    
    private var rotationDirection: CGFloat {
        return clockwise ? 360 : -360
    }
    
    var body: some View {
        ringView
        .onAppear(perform: {
            startRotation.toggle()
        })
    }
    
    private var ringView: some View {
        ZStack {
            // Circle with gradient
            Circle()
                .trim(from: 0.0, to: 1.0 - trimSpace)
                .stroke(Color.angularGradient, style: .init(lineWidth: lineWidth, lineCap: .round))
                .frame(height: height)
            
            // This Circle gives curve effect the starting and ending point to Gradient Circle
            Circle()
                .fill(.green)
                .frame(height: lineWidth)
                .offset(y: -height/2)
                .rotationEffect(.degrees(90.0))
        }
        .rotationEffect(.degrees(startRotation ? rotationDirection : 0.0))
        .animation(.linear(duration: 2.0).repeatForever(autoreverses: false), value: startRotation)
    }
}

#Preview {
    SpinnerView()
}
