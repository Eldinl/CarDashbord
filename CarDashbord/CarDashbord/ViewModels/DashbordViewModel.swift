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
    @Published var resultImages: [IdentifiableImage] = []
    
    var topIndicators: [Indicators.IndicatorClasses?] = []
    var leftIndicators: [Indicators.IndicatorClasses?] = []
    var tralingIndicators: [Indicators.IndicatorClasses?] = []
    
    let allIndicators: [Indicators.IndicatorClasses] = Indicators.IndicatorClasses.allCases
    
    func addIndicator(indicator: Indicators.IndicatorClasses) {
        if selectedIndicatiors.contains(indicator) {
            if let index = selectedIndicatiors.firstIndex(of: indicator) { selectedIndicatiors.remove(at: index) }
        } else {
            if selectedIndicatiors.count < 10 {
                selectedIndicatiors.append(indicator)
            } else {
                limitIsExceeded = true
            }
        }
    }
    
    @MainActor
    func splitIndicators(displayScale: CGFloat) {
        var splitFunctions: [()] = [self.splitTopIndicators(), self.splitLeftIndicators(), self.splitTralingIndicators()]
        
        let first: ()? = splitFunctions.popLast()
        first
        
        let second: ()? = splitFunctions.popLast()
        second
        
        let third: ()? = splitFunctions.popLast()
        third
        
        
        let renderer = ImageRenderer(content: IndicatorsOnDashbordView(topIndicators: topIndicators, leftIndicators: leftIndicators, tralingIndicators: tralingIndicators))
        
        renderer.scale = displayScale
        
        if let uiImage = renderer.uiImage {
            resultImages.append(IdentifiableImage(image: Image(uiImage: uiImage)))
        }
        
    }
    
    
    func splitTopIndicators() {
        for _ in 1...2 {
            if let indicator = selectedIndicatiors.popLast() {
                topIndicators.append(indicator)
            } else {
                topIndicators.append(nil)
            }
        }
    }
    
    func splitLeftIndicators() {
        for _ in 1...4 {
            if let indicator = selectedIndicatiors.popLast() {
                leftIndicators.append(indicator)
            } else {
                leftIndicators.append(nil)
            }
        }
    }
    
    func splitTralingIndicators() {
        for _ in 1...4 {
            if let indicator = selectedIndicatiors.popLast() {
                tralingIndicators.append(indicator)
            } else {
                tralingIndicators.append(nil)
            }
        }
    }
}
