//
//  CirclularSpinnerApp.swift
//  CirclularSpinner
//
//  Created by Sanjeev Bharti on 12/1/23.
//

import SwiftUI

@main
struct CirclularSpinnerApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                Example1()
                Example2()
                Example3()
                Example4()
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .onAppear {
                UIPageControl.appearance().currentPageIndicatorTintColor = .gray
                UIPageControl.appearance().pageIndicatorTintColor = UIColor.gray.withAlphaComponent(0.2)
            }
        }
    }
}
