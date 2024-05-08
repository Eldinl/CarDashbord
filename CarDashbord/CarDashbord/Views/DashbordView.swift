//
//  DashbordView.swift
//  CarDashbord
//
//  Created by Леонид Логинов on 08.05.2024.
//

import SwiftUI

struct DashbordView: View {
    @StateObject var viewModel: DashbordViewModel = DashbordViewModel()
    
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                ForEach(viewModel.allIndicators, id: \.self) { image in
                    Button(action: {
                        
                    }, label: {
                        HStack {
                            image.image
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFit()
    //                        Text()
                        }
                    })
                }
            }
        }
        .navigationTitle("Dashbord")
    }
}


#Preview {
    DashbordView()
}
