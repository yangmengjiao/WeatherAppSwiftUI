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
            LinearGradient(colors: [.blue, .white], startPoint: .leading, endPoint: .bottom)
            HeaderView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
