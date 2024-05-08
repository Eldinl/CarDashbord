//
//  DashbordViewModel.swift
//  CarDashbord
//
//  Created by Леонид Логинов on 08.05.2024.
//

import SwiftUI

class DashbordViewModel: ObservableObject {
    @Published var selectedIndicatiors:  [Indicators.IndicatorClasses] = []
    let allIndicators: [Indicators.IndicatorClasses] = Indicators.IndicatorClasses.allCases
}
