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
    @State var isRandom: Bool = false
    
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
            
            VStack {
                Button(action: {
                    viewModel.splitIndicators(displayScale: displayScale)
                    isSelectingDone = true
                    
                }, label: {
                    Text("Создать")
                        .foregroundStyle(.black)
                        .frame(width: 350, height: 30)
                        .background(
                            Color.green.opacity(0.7)
                        )
                })
                
                NavigationLink {
                    RandomizerView(viewModel: viewModel)
                } label: {
                    Text("Сгенерировать случайно")
                        .foregroundStyle(.black)
                        .frame(width: 350, height: 30)
                        .background(
                            Color.green.opacity(0.7)
                        )
                }
            }
            .frame(height: 70)

        }
        .navigationTitle("Приборная панель")
    }
}


#Preview {
    NavigationView {
        DashbordView()
    }
}
