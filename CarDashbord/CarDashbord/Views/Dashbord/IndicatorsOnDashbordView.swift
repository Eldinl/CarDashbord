//
//  IndicatorsOnDashbordView.swift
//  CarDashbord
//
//  Created by Леонид Логинов on 09.05.2024.
//

import SwiftUI

struct IndicatorsOnDashbordView: View {
    let topIndicators: [Indicators.IndicatorClasses?]
    let leftIndicators: [Indicators.IndicatorClasses?]
    let tralingIndicators: [Indicators.IndicatorClasses?]
    
    
    var body: some View {
        ZStack {
            Image.image.dashbord

            
            HStack(spacing: 60) {
                ForEach(topIndicators, id: \.self) { indicator in
                    if let indicator = indicator {
                        indicator.image
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 80)
                    } else {
                        EmptyView()
                    }
                    
                }
            }
            .padding(.trailing, 50)
            .padding(.bottom, 100)
            
            VStack {
                HStack(spacing: 20) {
                    Spacer()
                
                    ForEach(leftIndicators, id: \.self) { indicator in
                        if let indicator = indicator {
                            indicator.image
                                .resizable()
                                .scaledToFit()
                                .frame(maxHeight: 80)
                        } else {
                            EmptyView()
                        }
                    }
                    
                    ForEach(tralingIndicators, id: \.self) { indicator in
                        if let indicator = indicator {
                            indicator.image
                                .resizable()
                                .scaledToFit()
                                .frame(maxHeight: 80)
                        } else {
                            EmptyView()
                        }
                    }
                    
                    Spacer()
                }
                .padding(.bottom)
                .padding(.top, 830)
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    IndicatorsOnDashbordView(topIndicators: [.airBag2, .battery7], leftIndicators: [.abs11, .belt12, .doors3, .blindSpots15], tralingIndicators: [.break10, .doors3, .fuel13, .laneHelp16])
}
