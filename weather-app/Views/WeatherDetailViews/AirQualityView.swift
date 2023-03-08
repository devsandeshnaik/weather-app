//
//  AirQualityView.swift
//  weather-app
//
//  Created by Sandesh Naik on 08/03/23.
//

import SwiftUI

struct AirQualityView: View {
    var body: some View {
        GeometryReader { geo in
            let height = geo.size.height
            let width = geo.size.width
            let padding: CGFloat = 16
            
            ZStack {
                RoundedRectangle(cornerRadius: 22)
                    .fill(Gradient.componentGradient)
                VStack(spacing: 16){
                    HStack {
                        Image(systemName: "air.conditioner.horizontal")
                        Text("AIR QUALITY")
                        Spacer()
                    }
                    .font(.title3)
                    .foregroundColor(.appTertiary)
                    .padding(.top, 8)
                    .padding( .leading, 16)
                    
                    Text("QUICK NOTE")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .frame(maxWidth: .greatestFiniteMagnitude, alignment: .leading)
                        
                    
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Gradient.progressGradient)
                        .frame(height: 4)
                        .padding(.horizontal)
                        .overlay {
                            Circle()
                                .fill(Color.white)
                                .frame(width: 8, height: 8)
                                .position(x: width * 0.5 - 16, y: 2)
                                
                        }
                    
                }
                
            }
            .frame(height: 130)
        .padding()
        }
    }
}

struct AirQualityView_Previews: PreviewProvider {
    static var previews: some View {
        AirQualityView()
    }
}
