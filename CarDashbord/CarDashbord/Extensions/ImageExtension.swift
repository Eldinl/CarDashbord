//
//  ImageExtension.swift
//  CarDashbord
//
//  Created by Леонид Логинов on 08.05.2024.
//

import SwiftUI

extension Image {
    static let image = DashbordImages()
}

struct DashbordImages {
    let dashbordImageClasses = DashbordImageClasses()
    let dashbord = Image("final")
    
    struct DashbordImageClasses {
        let engineIcon0 = Image("0")
        let oilIcon1 = Image("1")
        let airBag2 = Image("2")
        let doors3 = Image("3")
        let cruiseControl4 = Image("4")
        let wheel5 = Image("5")
        let esc6 = Image("6")
        let battery7 = Image("7")
        let escOff8 = Image("8")
        let tiresPressure9 = Image("9")
        let break10 = Image("10")
        let abs11 = Image("11")
        let belt12 = Image("12")
        let fuel13 = Image("13")
        let parkingBreak14 = Image("14")
        let blindSpots15 = Image("15")
        let laneHelp16 = Image("16")
        let collisionAssistance17 = Image("17")
        let mainLamp18 = Image("18")

    }
}
