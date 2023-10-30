//
//  CityTextView.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Pereira on 21/10/23.
//

import SwiftUI

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium))
            .foregroundColor(.white)
            .padding()
    }
}

struct CityTextView_Previews: PreviewProvider {
    static var previews: some View {
        CityTextView(cityName: "Cupertino, CA")
            .background(.blue)
    }
}
