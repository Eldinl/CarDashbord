//
//  DashbordView.swift
//  CarDashbord
//
//  Created by Леонид Логинов on 08.05.2024.
//

import SwiftUI

struct DashbordView: View {
    @StateObject var viewModel: DashbordViewModel = DashbordViewModel()
    @Environment(\.displayScale) var displayScale
    
    @State var isSelectingDone: Bool = false
    
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                ForEach(viewModel.allIndicators, id: \.self) { indicator in
                    Button(action: {
                        viewModel.addIndicator(indicator: indicator)
                    }, label: {
                        HStack {
                            indicator.image
                                .resizable()
                                .frame(width: 45, height: 40)
                                .scaledToFit()
                            
                            Spacer()
                            
                            Text(indicator.text)
                                .font(.subheadline)
                            
                            Spacer()
                            
                            Circle()
                                .stroke(.black, lineWidth: 2)
                                .fill(viewModel.selectedIndicatiors.contains(indicator) ? .green : .clear)
                                .frame(maxWidth: 40)
                        }
                    })
                    .padding(.vertical, 5)
                }
                .padding()
            }
            .navigationDestination(isPresented: $isSelectingDone) {
                AllIndicatorsImagesView(viewModel: viewModel)
            }
            NavigationLink("Create") {
                EmptyView()
            }
        }
        .navigationTitle("Dashbord")
    }
}


#Preview {
    NavigationView {
        DashbordView()
    }
}
