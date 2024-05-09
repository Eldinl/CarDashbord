//
//  IndicatorsOnDashbordView.swift
//  CarDashbord
//
//  Created by Леонид Логинов on 09.05.2024.
//

import SwiftUI

struct IndicatorsOnDashbordView: View {
    let topIndicators: [Indicators.IndicatorClasses] = [.abs11, .airBag2]
    let leftIndicators: [Indicators.IndicatorClasses] = [.abs11, .airBag2, .doors3, .engineIcon0]
    let tralingIndicators: [Indicators.IndicatorClasses] = [.abs11, .airBag2, .wheel5, .cruiseControl4]
    
    var body: some View {
        ZStack {
            Image.image.dashbord
                .resizable()
                .scaledToFit()
            
            HStack {
                ForEach(topIndicators, id: \.self) { indicator in
                    indicator.image
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: 10)
                }
            }
            .padding(.trailing, 8)
            .padding(.bottom, 20)
            
            VStack {
                HStack {
                    ForEach(leftIndicators, id: \.self) { indicator in
                        indicator.image
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 10)
                    }
                    
                    Spacer()
                    
                    ForEach(tralingIndicators, id: \.self) { indicator in
                        indicator.image
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 10)
                    }
                }
                .padding(.top, 140)
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    IndicatorsOnDashbordView()
}
