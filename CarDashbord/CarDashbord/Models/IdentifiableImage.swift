//
//  IdentifiableImage.swift
//  CarDashbord
//
//  Created by Леонид Логинов on 10.05.2024.
//

import SwiftUI

struct IdentifiableImage: Identifiable {
    var id: UUID = UUID()
    var image: UIImage
}
