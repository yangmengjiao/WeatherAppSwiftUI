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
}

class HeaderViewModel: ObservableObject {
    var location: String = "New York City, NY"
    var currentTemp: String = "75°"
    var currentConditions: String = "Clear"
    
}
