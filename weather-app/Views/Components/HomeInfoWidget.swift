//
//  HomeInfoWidget.swift
//  weather-app
//
//  Created by Sandesh Naik on 03/01/23.
//

import SwiftUI

struct HomeInfoWidget: View {
    var body: some View {
        VStack {
            Text("Panaji")
                .font(.largeTitle)
                .fontWeight(.regular)
                
            
            Text("19")
                .font(.system(size: 120))
                .fontWeight(.medium)
            Text("state")
                .font(.title)
                .fontWeight(.regular)
            
            HStack(spacing: 16) {
                Text("H:23")
                Text("L:12")
            }
            .fontWeight(.bold)
        }
        .fontDesign(.rounded)
        .foregroundColor(.white)
        .frame(maxWidth: .infinity)
        .padding()

    }
}

struct HomeInfoWidget_Previews: PreviewProvider {
    static var previews: some View {
        HomeInfoWidget()
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
    }
}
