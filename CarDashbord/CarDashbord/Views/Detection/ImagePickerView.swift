//
//  ImagePickerView.swift
//  CarDashbord
//
//  Created by Леонид Логинов on 15.05.2024.
//

import SwiftUI
import PhotosUI

struct ImagePickerView: View {
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImageData: Data? = nil
    @ObservedObject var viewModel: DetectionViewModel
    
    var body: some View {
        VStack {
            PhotosPicker(
                selection: $selectedItem,
                matching: .images,
                photoLibrary: .shared()
            ) {
                Text("Выбрать изображение из галереи")
                    .foregroundStyle(.black)
                    .frame(width: 350, height: 50)
                    .background(
                        Color.green.opacity(0.7)
                    )
            }
            .onChange(of: selectedItem, {
                Task { @MainActor in
                    if let data = try? await selectedItem?.loadTransferable(type: Data.self) {
                        viewModel.selectedImage = UIImage(data:data)
                        return
                    }
                }
            })
        }
//        .padding()
    }
}
