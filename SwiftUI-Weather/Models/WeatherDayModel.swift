//
//  WeatherDayModel.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Pereira on 21/10/23.
//

import Foundation

struct WeatherDayModel: Identifiable {
    let id = UUID().uuidString
    let dayOfWeek: String
    let imageName: String
    let temperature: Int
}

extension WeatherDayModel {
    static func stub() -> Self {
        WeatherDayModel(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 74)
    }
    
    static func stubList() -> [Self] {
        return [
            WeatherDayModel(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 74),
            WeatherDayModel(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 88),
            WeatherDayModel(dayOfWeek: "THU", imageName: "wind.snow", temperature: 55),
            WeatherDayModel(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 60),
            WeatherDayModel(dayOfWeek: "SAT", imageName: "snow", temperature: 25)
        ]
    }
}
