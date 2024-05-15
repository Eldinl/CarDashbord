//
//  DetectionViewModel.swift
//  CarDashbord
//
//  Created by Леонид Логинов on 15.05.2024.
//

import Foundation
import SwiftUI


class DetectionViewModel: ObservableObject {
    @Published var selectedImage: UIImage? = nil
    @Published var resultClass: [Indicators.IndicatorClasses] = [.engineIcon0, .oilIcon1]
}
