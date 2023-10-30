//
//  MainWeatherStatusView.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Pereira on 21/10/23.
//

import SwiftUI

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)º")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}

struct MainWeatherStatusView_Previews: PreviewProvider {
    static var previews: some View {
        MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 76)
            .background(.blue)
    }
}
