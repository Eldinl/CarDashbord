//
//  ContentView.swift
//  CarDashbord
//
//  Created by Леонид Логинов on 08.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                NavigationLink {
                    //
                } label: {
                    Text("ML Model")
                        .font(.title)
                }
                
                NavigationLink {
                    DashbordView()
                } label: {
                    Text("Dashbord")
                        .font(.title)
                }

            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
