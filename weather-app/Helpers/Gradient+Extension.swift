//
//  Gradient+Extension.swift
//  weather-app
//
//  Created by Sandesh Naik on 08/03/23.
//

import SwiftUI

extension Gradient {
    static var backgroundGradient: LinearGradient {
        LinearGradient(colors: [Color.bgGradientColorOne, Color.bgGradientColorTwo], startPoint: .topLeading, endPoint: .bottomTrailing)
    }
    
    static var componentGradient: LinearGradient {
        LinearGradient(colors: [Color.componentGradientColorOne, Color.componentGradientColorTwo], startPoint: .topLeading, endPoint: .bottomTrailing)
    }
    
    static var progressGradient: LinearGradient {
        LinearGradient(colors: [Color.progressGradientColorOne, Color.progressGradientColorOTwo], startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

