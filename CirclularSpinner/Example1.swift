//
//  GradientSpinnerView.swift
//  CirclularSpinner
//
//  Created by Sanjeev Bharti on 11/28/23.
//

import SwiftUI

struct Example1: View {
    
    var body: some View {
        VStack(spacing: 25.0) {
            Text("Clockwise Rotation ").font(.title)
            SpinnerView(height: 40, clockwise: true, lineWidth: 6)
            SpinnerView(height: 50, clockwise: true, lineWidth: 10)
            SpinnerView(height: 60, clockwise: true, lineWidth: 5.0)
            
            Divider()
                .padding(.vertical)
            
            Text("Clockwise Rotation + Trim").font(.title)
            SpinnerView(height: 40, clockwise: true, lineWidth: 6, trimSpace: 0.1)
            SpinnerView(height: 50, clockwise: true, lineWidth: 10, trimSpace: 0.1)
            SpinnerView(height: 60, clockwise: true, lineWidth: 5.0, trimSpace: 0.1)
        }
    }
}

#Preview {
    VStack(spacing: 20.0) {
        Example1()
    }
}

extension Color {
    
    static var angularGradient: AngularGradient {
        return AngularGradient(colors: [.green, .red], center: .center)
    }
    
}
