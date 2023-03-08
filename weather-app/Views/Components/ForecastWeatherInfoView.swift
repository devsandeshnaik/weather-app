//
//  ForecastWeatherInfoView.swift
//  weather-app
//
//  Created by Sandesh Naik on 04/03/23.
//

import SwiftUI
enum ForcastSegments: String, CaseIterable {
    case hourly
    case weekly
    
    var components: Int {
        switch self {
        case .hourly: return 24
        case .weekly: return 7
        }
    }
}
struct ForecastWeatherInfoView: View {
    
    @State private var currentSegment: ForcastSegments = .weekly
    
    var body: some View {
        VStack {
            Picker("", selection: $currentSegment) {
                ForEach(ForcastSegments.allCases, id: \.self) {
                    Text($0.rawValue)
                }
            }
            .font(.title3)
            .pickerStyle(.segmented)
            .padding()
            
            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach(0..<currentSegment.components, id:  \.self) { _ in
                        WeatherComponentView()
                    }
                }
                .padding(8)
            }
            .scrollIndicators(.never)
        }
    }
}

struct ForecastWeatherInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastWeatherInfoView()
    }
}
