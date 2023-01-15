//
//  HeaderView.swift
//  WeatherAppSwiftUI
//
//  Created by mengjiao yang on 1/15/23.
//

import SwiftUI



struct HeaderView: View {
    var weatherViewModel = WeathViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text(weatherViewModel.headerViewModel.location)
                .bold()
                .font(.system(size: 36))
                .foregroundColor(.white)
            
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.none)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
            
            Text(weatherViewModel.headerViewModel.currentTemp)//option shift +8, can print °
                .bold()
                .font(.system(size: 36))
                .foregroundColor(.white)
            
            Text(weatherViewModel.headerViewModel.currentConditions)
                .bold()
                .font(.system(size: 36))
                .foregroundColor(.white)
            
            Spacer()
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
