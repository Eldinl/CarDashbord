//
//  AllIndicatorsImagesView.swift
//  CarDashbord
//
//  Created by Леонид Логинов on 09.05.2024.
//

import SwiftUI

struct AllIndicatorsImagesView: View {
    @ObservedObject var viewModel: DashbordViewModel
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(viewModel.resultImages) { image in
                    image.image
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    AllIndicatorsImagesView(viewModel: DashbordViewModel.init())
}
