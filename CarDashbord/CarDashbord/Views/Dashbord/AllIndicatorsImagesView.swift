//
//  AllIndicatorsImagesView.swift
//  CarDashbord
//
//  Created by Леонид Логинов on 09.05.2024.
//

import SwiftUI

struct AllIndicatorsImagesView: View {
    @ObservedObject var viewModel: DashbordViewModel
    
    @Environment(\.displayScale) var displayScale
    
    @State private var renderedImage = Image(systemName: "photo")
    var body: some View {
        ScrollView {
            ForEach(viewModel.resultImages) { image in
                Image(uiImage: image.image)
            }
            .padding(.horizontal)
        }
        Button(action: {
            viewModel.saveImage()
        }, label: {
            Text("Save")
        })
        .onDisappear {
            viewModel.resultImages = []
            viewModel.selectedIndicatiors = []
            viewModel.topIndicators = []
            viewModel.leftIndicators = []
            viewModel.tralingIndicators = []
        }
    }
    
//    @MainActor func render() {
//        let renderer = ImageRenderer(content: IndicatorsOnDashbordView(topIndicators: viewModel.topIndicators, leftIndicators: viewModel.leftIndicators, tralingIndicators: viewModel.tralingIndicators))
//        
//        // make sure and use the correct display scale for this device
//        renderer.scale = displayScale
//        
//        if let uiImage = renderer.uiImage {
//            renderedImage = Image(uiImage: uiImage)
//        }
//    }
}

#Preview {
    AllIndicatorsImagesView(viewModel: DashbordViewModel.init())
}
