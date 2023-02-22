//
//  Forecast.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/22/23.
//

import Foundation



class WeatherForecast: ObservableObject {
    @Published
    var forecast = [Weather]()
    
    struct Weather: Identifiable {
        let id = UUID()
        let day: String
        let icon: String
    }
    
    init() {
        forecast = [
            Weather(day: "Sunday", icon: "cloud.snow.fill"),
            Weather(day: "Monday", icon: "sun.min.fill"),
            Weather(day: "Tuesday", icon: "sun.max.fill"),
            Weather(day: "Wednesday", icon: "cloud.sun.fill"),
            Weather(day: "Thursday", icon: "sun.min.fill"),
            Weather(day: "Friday", icon: "cloud.drizzle.fill"),
            Weather(day: "Saturday", icon: "cloud.sleet.fill")
        ]
    }
    
    func fetchAnotherWeek() {
        // Run this code 2 second later
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            forecast.append(contentsOf: forecast)
        }
    }
}
