//
//  ContentView.swift
//  weather-app
//
//  Created by Sandesh Naik on 31/12/22.
//

import SwiftUI

struct AppHome: View {
    @State private var showForecastSheet: Bool = true
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                    HomeInfoWidget()
                    Spacer()
            }
            .padding(.top, 80)

            ZStack {
                VStack {
                    Spacer()
                    ForecastWeatherInfoView()
                        .padding(.bottom, 44)
                        .background(Color.white)
                        .cornerRadius(22)
                        
                }
                .ignoresSafeArea()
            }
        }
        .onAppear {
            Task { await fetchData() }
        }
        .interactiveDismissDisabled()

    }
    
    private func fetchData() async {
        let x: Result<CityWeatherInfo, NetworkError> =  await WeatherAPI().makeRequest(for: WeatherEndpoint.search(city: "panjim"))
    }
}

struct AppHome_Previews: PreviewProvider {
    static var previews: some View {
        AppHome()
    }
}
