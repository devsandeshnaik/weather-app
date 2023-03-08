//
//  DetailWeatherInfoView.swift
//  weather-app
//
//  Created by Sandesh Naik on 08/03/23.
//

import SwiftUI

struct DetailWeatherInfoView: View {
    var body: some View {
        ZStack {
            Gradient.backgroundGradient
                .ignoresSafeArea()
            
            VStack {
                ForecastWeatherInfoView()
            }
        }
    }
}

struct DetailWeatherInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailWeatherInfoView()
    }
}
