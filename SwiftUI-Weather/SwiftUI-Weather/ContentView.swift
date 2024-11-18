//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Asad Sayeed on 24/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 80)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "Tue",
                                   imageName: "cloud.sun.fill",
                                   temperature: 72)
                    
                    WeatherDayView(dayOfWeek: "Wed",
                                   imageName: "sun.max.fill",
                                   temperature: 88)
                    
                    WeatherDayView(dayOfWeek: "Thu",
                                   imageName: "wind.snow",
                                   temperature: 45)
                    
                    WeatherDayView(dayOfWeek: "Fri",
                                   imageName: "sunset.fill",
                                   temperature: 60)
                    
                    WeatherDayView(dayOfWeek: "Sat",
                                   imageName: "cloud.snow.fill",
                                   temperature: 25)
                    
                    
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  backgroundColor: isNight ? Color.mint : Color.white,
                                  textColor: isNight ? Color.white : Color.blue)
                }
                
                Spacer()
            }
        }
    }
}


struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            Text("\(temperature)°")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
        }
    }
}


struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,
                                                   isNight ? .gray : .lightBlue]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .ignoresSafeArea()
        
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}


struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}


struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}


#Preview {
    ContentView()
}
