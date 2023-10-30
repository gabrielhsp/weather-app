//
//  WeatherDayView.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Pereira on 21/10/23.
//

import SwiftUI

struct WeatherDayView: View {
    var day: WeatherDayModel
    
    var body: some View {
        VStack {
            Text(day.dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: day.imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(day.temperature)º")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct WeatherDayView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherDayView(day: .stub())
            .background(.blue)
    }
}
