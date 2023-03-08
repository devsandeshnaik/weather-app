//
//  BackgroundView.swift
//  weather-app
//
//  Created by Sandesh Naik on 03/01/23.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .center) {
                Image("home_background")
                    .resizable()
                    .frame(width: geo.size.width,
                           height: geo.size.height)
            }
        }
        .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
