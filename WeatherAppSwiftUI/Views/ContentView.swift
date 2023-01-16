//
//  ContentView.swift
//  WeatherAppSwiftUI
//
//  Created by mengjiao yang on 1/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, Color(.link), .pink], startPoint: .leading, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                HeaderView()
                HourlyView()
                DailyView()
            }
        }
        
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
