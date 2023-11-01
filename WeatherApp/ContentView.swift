//
//  ContentView.swift
//  WeatherApp
//
//  Created by Tahir Atakan Can on 1.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews : PreviewProvider {
    static var previews:some View{
            ContentView()
    }
}
