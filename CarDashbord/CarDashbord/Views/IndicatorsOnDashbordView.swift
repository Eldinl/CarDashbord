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
                .resizable()
                .scaledToFit()
            
            HStack {
                ForEach(topIndicators, id: \.self) { indicator in
                    if let indicator = indicator {
                        indicator.image
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 10)
                    } else {
                        EmptyView()
                    }
                    
                }
            }
            .padding(.trailing, 8)
            .padding(.bottom, 20)
            
            VStack {
                HStack {
                    ForEach(leftIndicators, id: \.self) { indicator in
                        if let indicator = indicator {
                            indicator.image
                                .resizable()
                                .scaledToFit()
                                .frame(maxHeight: 10)
                        } else {
                            EmptyView()
                        }
                    }
                    
                    Spacer()
                    
                    ForEach(tralingIndicators, id: \.self) { indicator in
                        if let indicator = indicator {
                            indicator.image
                                .resizable()
                                .scaledToFit()
                                .frame(maxHeight: 10)
                        } else {
                            EmptyView()
                        }
                    }
                }
                .padding(.top, 140)
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    IndicatorsOnDashbordView(topIndicators: [.airBag2 ], leftIndicators: [.abs11], tralingIndicators: [.break10, .doors3])
}
