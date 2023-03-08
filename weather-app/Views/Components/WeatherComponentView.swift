//
//  HourlyWeatherComponentView.swift
//  weather-app
//
//  Created by Sandesh Naik on 04/03/23.
//

import SwiftUI

struct WeatherComponentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("12 AM")
                .font(.system(.title2))
                .multilineTextAlignment(.center)
            
            Image(systemName: "cloud.drizzle.fill")
                .resizable()
                .frame(width: 44, height: 44)
            
            Text("12 AM")
                .font(.system(.title2))
                .multilineTextAlignment(.center)
        }
        .frame(width: 66)
        .padding(.vertical,22)
        .padding(.horizontal,8)
        .background(Gradient.componentGradient)
        .foregroundColor(.white)
        .cornerRadius(36)
       
    }
}

struct WeatherComponentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherComponentView()
            	
    }
}
