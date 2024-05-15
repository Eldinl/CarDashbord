//
//  RandomizerView.swift
//  CarDashbord
//
//  Created by Леонид Логинов on 10.05.2024.
//

import SwiftUI

struct RandomizerView: View {
    @ObservedObject var viewModel: DashbordViewModel
    @Environment(\.displayScale) var displayScale
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Select random images count")
            
            TextField("input here", text: $viewModel.randomImagesCount)
            
            Text(viewModel.statusCount.description)
            
            Button(action: {
                viewModel.makeRandomImages(displayScale: displayScale)
            }, label: {
                Text("start")
            })
        }
        .padding(.horizontal)
    }
}

#Preview {
    RandomizerView(viewModel: DashbordViewModel())
}
