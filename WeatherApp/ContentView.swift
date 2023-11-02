//
//  ContentView.swift
//  WeatherApp
//
//  Created by Tahir Atakan Can on 1.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        ZStack{
            BackRoundView(topColor: .blue, bottomColor: .purple)
            VStack{
                CityTextView(cityName: "Konya, TR")
            
                WeatherStatusView(imageName: "cloud.sun.fill", tempature: 25)
                
                HStack(spacing:20){
                        WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.fill", tempature: 20)
                        WeatherDayView(dayOfWeek: "Wed", imageName: "cloud.rain.fill", tempature: 15)
                        WeatherDayView(dayOfWeek: "Thr", imageName: "sun.max.fill", tempature: 24)
                        WeatherDayView(dayOfWeek: "Fri", imageName: "cloud.hail.fill", tempature: 13)
                        WeatherDayView(dayOfWeek: "Sat", imageName: "cloud.rain.fill", tempature: 21)
                        
                    }
                
                Spacer()
                
                Button{
                    print("tapped")
                }label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backColor: .white)
                }
                
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews : PreviewProvider {
    static var previews:some View{
            ContentView()
    }
}



struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var tempature: Int
    
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(tempature)°")
                .font(.system(size: 28, weight: .medium, design: .rounded))
                .foregroundStyle(.white)
        }
    }
}


struct BackRoundView: View {
    var topColor: Color   // parametre olarak top color ve bottom color göndermem gerekiyor
    var bottomColor: Color
    
    
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct WeatherStatusView: View {
    var imageName: String
    var tempature: Int
    
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            Text("23°") // option + shift + 8
                .font(.system(size: 70, weight: .medium, design: .rounded))
                .foregroundStyle(.white)
        }
        .padding(.bottom,40)
    }
}

struct CityTextView: View {
    var cityName: String

    var body: some View {
        Text("Konya , TR")
            .font(.system(size: 32, weight: .medium, design: .rounded))
            .foregroundStyle(.white)
    }
}


