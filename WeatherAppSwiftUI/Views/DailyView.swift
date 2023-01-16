//
//  DailyView.swift
//  WeatherAppSwiftUI
//
//  Created by mengjiao yang on 1/16/23.
//

import SwiftUI

struct DailyView: View {
    var viewModel = WeathViewModel()
    var body: some View {
        VStack {
            ForEach(0..<7) { _ in
                DayRowView(model: DayData())
                    .padding()
            }
        }
    }
}

struct DayRowView: View {
    var model: DayData
    
    var body: some View {
        HStack {
            Text(model.day)
                .bold()
                .foregroundColor(.white)
            Spacer()
            VStack {
                Text("H: \(model.hi)F")
                    .foregroundColor(.white)
                Text("L: \(model.lo)°F")
                    .foregroundColor(.white)
            }
        }
    }
}

struct DailyView_Previews: PreviewProvider {
    static var previews: some View {
        DailyView()
    }
}
