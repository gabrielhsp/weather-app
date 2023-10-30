//
//  WeatherDaysListView.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Pereira on 21/10/23.
//

import SwiftUI

struct WeatherDaysListView: View {
    let days: [WeatherDayModel]
    
    var body: some View {
        HStack(spacing: 20) {
            ForEach(days) {
                WeatherDayView(day: $0)
            }
        }
    }
}

struct WeatherDaysListView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherDaysListView(days: WeatherDayModel.stubList())
            .background(.blue)
    }
}
