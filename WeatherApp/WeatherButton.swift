//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Tahir Atakan Can on 2.11.2023.
//

import Foundation
import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backColor: Color
    
    var body: some View {
        Text("Change Day Time")
            .frame(width: 280, height: 50)
            .background(backColor)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .clipShape(RoundedRectangle(cornerRadius: 25.0 , style: .circular ))
    }
}
