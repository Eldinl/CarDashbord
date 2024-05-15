//
//  ResultView.swift
//  CarDashbord
//
//  Created by Леонид Логинов on 15.05.2024.
//

import SwiftUI

struct ResultView: View {
    @ObservedObject var viewModel: DetectionViewModel
    
    var body: some View {
        VStack {
            Image.image.testDashbord
                .resizable()
                .frame(height: 250)
                .scaledToFit()
            Text("Обнаруженные индикаторы:")
                .font(.title)
            ScrollView {
                ForEach(viewModel.resultClass, id: \.self) { indicator in
                    indicator.image
                        .resizable()
                        .frame(width: 100, height: 100)
                        .scaledToFit()
                    
                    Group {
                        VStack(alignment: .leading, spacing: 16) {
                            Text(indicator.text)
                                .font(.title)
                            Text(indicator.description)
                                .font(.subheadline)
                        }
                        
                    }
                    .padding(.horizontal)
                }
                
                
            }
        }
    }
}

#Preview {
    ResultView(viewModel: DetectionViewModel())
}
