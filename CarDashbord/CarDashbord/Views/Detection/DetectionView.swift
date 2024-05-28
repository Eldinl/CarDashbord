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
                    Text("Снять новое изображение")
                        .foregroundStyle(.black)
                        .frame(width: 350, height: 50)
                        .background(
                            Color.green.opacity(0.7)
                        )
                }
            }
        }
        .padding(.bottom)
        
        NavigationLink {
            ResultView(viewModel: viewModel)
        } label: {
            Text("Проверить")
                .foregroundStyle(.black)
                .frame(width: 350, height: 50)
                .background(
                    Color.red.opacity(0.7)
                )
        }

    }
}


#Preview {
    DetectionView()
}
