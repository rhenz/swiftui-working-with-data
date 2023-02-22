//
//  ObservableObject_WithSubview.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/22/23.
//

import SwiftUI

struct ObservableObject_WithSubview: View {
    @StateObject private var forecast = Forecast()
    @State private var showForecast = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack(spacing: 24) {
                    HeaderView(title: "", subtitle: "Introduction", desc: "Pass a reference of your @StateObject into a subview that has a type @ObserverdObject")
                    
                    Text(forecast.forecast[0].day)
                    Image(systemName: forecast.forecast[0].icon)
                        .font(.system(size: 120))
                        .foregroundColor(.pink)
                    Button("Show 7 Day Forecast") {
                        showForecast = true
                    }
                }
                .font(.largeTitle)
                
                if showForecast {
//                    ForecastView(forecast: forecast, showForecast, $showForecast)
                }
            }
            .navigationTitle("@ObservedObject")
        }
    }
}

struct ObservableObject_WithSubview_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObject_WithSubview()
    }
}

// MARK: - Forecast View
struct ForecastView: View {
    @ObservedObject var forecast: Forecast
    @Binding var showForecast: Bool
    
    var body: some View {
        VStack {
            List(forecast.forecast) { day in
                Label {
                    Text(day.day)
                        .font(.title)
                } icon: {
                    Image(systemName: day.icon)
                        .font(.title)
                        .foregroundColor(.pink)
                }
            }
            
            Button("Close") {
                showForecast.toggle()
            }
        }
        .font(.title)
    }
}
