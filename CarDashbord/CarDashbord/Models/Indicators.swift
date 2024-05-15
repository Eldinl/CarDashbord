//
//  Indicators.swift
//  CarDashbord
//
//  Created by Леонид Логинов on 08.05.2024.
//

import SwiftUI

struct Indicators {
    enum IndicatorClasses: CaseIterable {
        case engineIcon0
        case oilIcon1
        case airBag2
        case doors3
        case cruiseControl4
        case wheel5
        case esc6
        case battery7
        case escOff8
        case tiresPressure9
        case break10
        case abs11
        case belt12
        case fuel13
        case parkingBreak14
        case blindSpots15
        case laneHelp16
        case collisionAssistance17
        case mainLamp18
        
        var image: Image {
            switch self {
                case .engineIcon0:
                    return Image.image.dashbordImageClasses.engineIcon0
                case .oilIcon1:
                    return Image.image.dashbordImageClasses.oilIcon1
                case .airBag2:
                    return Image.image.dashbordImageClasses.airBag2
                case .doors3:
                    return Image.image.dashbordImageClasses.doors3
                case .cruiseControl4:
                    return Image.image.dashbordImageClasses.cruiseControl4
                case .wheel5:
                    return Image.image.dashbordImageClasses.wheel5
                case .esc6:
                    return Image.image.dashbordImageClasses.esc6
                case .battery7:
                    return Image.image.dashbordImageClasses.battery7
                case .escOff8:
                    return Image.image.dashbordImageClasses.escOff8
                case .tiresPressure9:
                    return Image.image.dashbordImageClasses.tiresPressure9
                case .break10:
                    return Image.image.dashbordImageClasses.break10
                case .abs11:
                    return Image.image.dashbordImageClasses.abs11
                case .belt12:
                    return Image.image.dashbordImageClasses.belt12
                case .fuel13:
                    return Image.image.dashbordImageClasses.fuel13
                case .parkingBreak14:
                    return Image.image.dashbordImageClasses.parkingBreak14
                case .blindSpots15:
                    return Image.image.dashbordImageClasses.blindSpots15
                case .laneHelp16:
                    return Image.image.dashbordImageClasses.laneHelp16
                case .collisionAssistance17:
                    return Image.image.dashbordImageClasses.collisionAssistance17
                case .mainLamp18:
                    return Image.image.dashbordImageClasses.mainLamp18
            }
        }
        
        var text: String {
            switch self {
                case .engineIcon0:
                    return L10.IndicatorNames.engineIcon0
                case .oilIcon1:
                    return L10.IndicatorNames.oilIcon1
                case .airBag2:
                    return L10.IndicatorNames.airBag2
                case .doors3:
                    return L10.IndicatorNames.doors3
                case .cruiseControl4:
                    return L10.IndicatorNames.cruiseControl4
                case .wheel5:
                    return L10.IndicatorNames.wheel5
                case .esc6:
                    return L10.IndicatorNames.esc6
                case .battery7:
                    return L10.IndicatorNames.battery7
                case .escOff8:
                    return L10.IndicatorNames.escOff8
                case .tiresPressure9:
                    return L10.IndicatorNames.tiresPressure9
                case .break10:
                    return L10.IndicatorNames.break10
                case .abs11:
                    return L10.IndicatorNames.abs11
                case .belt12:
                    return L10.IndicatorNames.belt12
                case .fuel13:
                    return L10.IndicatorNames.fuel13
                case .parkingBreak14:
                    return L10.IndicatorNames.parkingBreak14
                case .blindSpots15:
                    return L10.IndicatorNames.blindSpots15
                case .laneHelp16:
                    return L10.IndicatorNames.laneHelp16
                case .collisionAssistance17:
                    return L10.IndicatorNames.collisionAssistance17
                case .mainLamp18:
                    return L10.IndicatorNames.mainLamp18
            }
        }
        var description: String {
            switch self {
                case .engineIcon0:
                    return "Индикатор, загоревшийся после запуска двигателя, информирует о неисправности двигателя, влияющей на качество выхлопных газов. "
                case .oilIcon1:
                    return "Индикатор информирует о недостатке моторного масла."
                default:
                    return ""
            }
        }
    }
}
