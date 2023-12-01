//
//  Example4.swift
//  CirclularSpinner
//
//  Created by Sanjeev Bharti on 12/1/23.
//

import SwiftUI

struct Example4: View {
    
    @State private var scale = false
    var body: some View {
        VStack(spacing: 30.0) {
            
            Text("Rotate + Trim + Scale").font(.title)
            
            ZStack {
                SpinnerView(height: 100.0, clockwise: true, lineWidth: 5)
                    .scaleEffect(scale ? 1.2 : 1.0)
                
                SpinnerView(height: 80.0, lineWidth: 5, trimSpace: 0.1)
                    .scaleEffect(scale ? 1.4 : 1.0)
                
                SpinnerView(height: 60.0, clockwise: true, lineWidth: 5, trimSpace: 0.2)
                    .scaleEffect(scale ? 1.6 : 1.0)
            }
            .animation(.bouncy(duration: 2.0).repeatForever(autoreverses: true), value: scale)
        }
        .onTapGesture(perform: {
            scale = true
        })
    }
}

#Preview {
    Example4()
}
