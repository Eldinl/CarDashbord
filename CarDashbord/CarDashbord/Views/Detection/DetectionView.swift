//
//  DetectionView.swift
//  CarDashbord
//
//  Created by Леонид Логинов on 15.05.2024.
//

import SwiftUI

struct DetectionView: View {
    @StateObject var viewModel: DetectionViewModel = DetectionViewModel()
    var body: some View {
        VStack {
            if let image = viewModel.selectedImage {
                Image(uiImage: image)
                    .resizable()
                    .frame(height: UIScreen.main.bounds.width)
                    .scaledToFit()
            }
            
            
            VStack(spacing: 5) {
                ImagePickerView(viewModel: viewModel)
                Button {
                    //
                } label: {
                    Text("Get Images from camera")
                        .frame(width: 350, height: 50)
                }
            }
        }
        
        NavigationLink {
            ResultView(viewModel: viewModel)
        } label: {
            Text("Check")
        }

    }
}


#Preview {
    DetectionView()
}
