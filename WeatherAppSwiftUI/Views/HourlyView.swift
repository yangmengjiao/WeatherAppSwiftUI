//
//  HourlyView.swift
//  WeatherAppSwiftUI
//
//  Created by mengjiao yang on 1/16/23.
//

import SwiftUI

struct HourlyView: View {
    var weatherViewModel = WeathViewModel()
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0 ..< 24) { _ in
                    HourView(model: HourData())
                }
            }
        }
    }
}


struct HourView: View {
    var model: HourData
    
    var body: some View {
        VStack {
            Image(systemName: model.imgeURL)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35, alignment: .center)
            
            Text(model.temp)
                .bold()
                .foregroundColor(.white)
                
            Text(model.hour)
                .foregroundColor(.white)
        }
        .padding()
    }
}

struct HourlyView_Previews: PreviewProvider {
    static var previews: some View {
        HourlyView()
    }
}
