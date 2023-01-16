//
//  Models.swift
//  WeatherAppSwiftUI
//
//  Created by mengjiao yang on 1/15/23.
//

import Foundation
import SwiftUI

class WeathViewModel: ObservableObject {
    var headerViewModel = HeaderViewModel()
    var  hourlyModel = HourlyModel()
    var  daylyModel = DaylyModel()
}

class HeaderViewModel: ObservableObject {
    var location: String = "New York City, NY"
    var currentTemp: String = "75°"
    var currentConditions: String = "Clear"
    
}

class HourlyModel: ObservableObject {
    var data: [HourData] = []
}

class HourData: ObservableObject {
    var imgeURL: String = "sun.max.fill"
    var temp: String = "55°"
    var hour: String = "1PM"
}

class DaylyModel: ObservableObject {
    var data: [DayData] = []
}


class DayData: ObservableObject {
    var day: String = "Modany"
    var hi: String = "77°"
    var lo: String = "22°"
}


