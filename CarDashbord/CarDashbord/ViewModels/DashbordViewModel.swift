//
//  DashbordViewModel.swift
//  CarDashbord
//
//  Created by Леонид Логинов on 08.05.2024.
//

import SwiftUI

class DashbordViewModel: ObservableObject {
    @Published var selectedIndicatiors:  [Indicators.IndicatorClasses] = []
    @Published var limitIsExceeded: Bool = false
    
    let allIndicators: [Indicators.IndicatorClasses] = Indicators.IndicatorClasses.allCases
    
    func addIndicator(indicator: Indicators.IndicatorClasses) {
        if selectedIndicatiors.contains(indicator) {
            if let index = selectedIndicatiors.firstIndex(of: indicator) { selectedIndicatiors.remove(at: index) }
        } else {
            if selectedIndicatiors.count < 5 {
                selectedIndicatiors.append(indicator)
            } else {
                limitIsExceeded = true
            }
        }
    }
}
