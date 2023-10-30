//
//  WeatherBackgroundView.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Pereira on 21/10/23.
//

import SwiftUI

struct WeatherBackgroundView: View {
    var isNight: Bool
    
    private var topColor: Color {
        return isNight ? .black : .blue
    }
    
    private var bottomColor: Color {
        return isNight ? .gray : Color("lightBlue")
    }
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
        
        /*
         * In iOS 14, we have a component called `ContainerRelativeShape` available to create a background as a container
         * In iOS 16, we can use the component together will the `.fill()` modifier to add a gradient based on a Color
         * The example above shows us how this could be used
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
         */
    }
}

struct WeatherBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherBackgroundView(isNight: false)
    }
}
