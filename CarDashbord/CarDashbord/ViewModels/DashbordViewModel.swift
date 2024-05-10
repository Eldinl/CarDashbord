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
    
    @Published var randomImagesCount: String = ""
    @Published var statusCount: Int = 0
    
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
        splitTopIndicators()
        splitLeftIndicators()
        splitTralingIndicators()
        
        let renderer = ImageRenderer(content: IndicatorsOnDashbordView(topIndicators: topIndicators, leftIndicators: leftIndicators, tralingIndicators: tralingIndicators))
        
        renderer.scale = displayScale
        
        if let uiImage = renderer.uiImage {
            resultImages.append(IdentifiableImage(image: uiImage))
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
    
    func saveImage() {
        for image in resultImages {
            UIImageWriteToSavedPhotosAlbum(image.image, nil, nil, nil)
        }
    }
    
    @MainActor
    func makeRandomImages(displayScale: CGFloat) {
        if let count = Int(randomImagesCount) {
            for _ in 1...count {
                selectedIndicatiors = []
                topIndicators = []
                leftIndicators = []
                tralingIndicators = []
                let randomIndicatorCount = Int.random(in: 1...10)
                var allIndicators = Indicators.IndicatorClasses.allCases
                for _ in 0...randomIndicatorCount {
                    var randomIndicator = allIndicators.randomElement()
                    if let randomIndicator = randomIndicator {
                        var indicatorIndex = allIndicators.firstIndex(of: randomIndicator)
                        if let indicatorIndex = indicatorIndex {
                            selectedIndicatiors.append(randomIndicator)
                            allIndicators.remove(at: indicatorIndex)
                        }
                    }
                }
                statusCount += 1
                splitIndicators(displayScale: displayScale)
            }
            
            saveImage()
            statusCount = 0
            resultImages = []
        }
    }
}



