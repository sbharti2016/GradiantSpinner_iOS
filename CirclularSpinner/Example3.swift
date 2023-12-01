//
//  Example3.swift
//  CirclularSpinner
//
//  Created by Sanjeev Bharti on 12/1/23.
//

import SwiftUI

struct Example3: View {
    var body: some View {
        
        VStack {
            
            ZStack {
                SpinnerView(height: 100.0, lineWidth: 5)
                SpinnerView(height: 70.0, clockwise: true, lineWidth: 5)
                SpinnerView(height: 40.0, lineWidth: 5)
            }
            
            Divider()
                .padding(.vertical, 50.0)
            
            ZStack {
                SpinnerView(height: 100.0, lineWidth: 5, trimSpace: 0.1)
                SpinnerView(height: 70.0, clockwise: true, lineWidth: 5, trimSpace: 0.1)
                SpinnerView(height: 40.0, lineWidth: 5, trimSpace: 0.1)
            }
            
            Divider()
                .padding(.vertical, 50.0)
            
            ZStack {
                SpinnerView(height: 100.0, lineWidth: 5, trimSpace: 0.1)
                SpinnerView(height: 70.0, clockwise: true, lineWidth: 5)
                SpinnerView(height: 40.0, lineWidth: 5, trimSpace: 0.1)
            }
            
        }
    }
}

#Preview {
    Example3()
}
