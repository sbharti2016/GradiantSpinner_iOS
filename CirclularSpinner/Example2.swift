//
//  MultiGradientSpinnerView.swift
//  CirclularSpinner
//
//  Created by Sanjeev Bharti on 11/28/23.
//

import SwiftUI

struct Example2: View {
    
    var body: some View {
        VStack(spacing: 25.0) {
            Text("Anticlockwise Rotation").font(.title)
            SpinnerView(height: 40, lineWidth: 6)
            SpinnerView(height: 50, lineWidth: 10)
            SpinnerView(height: 60, lineWidth: 5.0)
            
            Divider()
                .padding(.vertical)
            
            Text("Anticlockwise Rotation + Trim").font(.title)
            SpinnerView(height: 40, lineWidth: 6, trimSpace: 0.1)
            SpinnerView(height: 50, lineWidth: 10, trimSpace: 0.1)
            SpinnerView(height: 60, lineWidth: 5.0, trimSpace: 0.1)
        }
    }
}

#Preview {
    ZStack {
        Example2()
    }
}
