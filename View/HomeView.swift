//
//  SwiftUIView.swift
//  MultiTab
//
//  Created by alumno on 4/10/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView() {
            VStack {
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                NavigationLink(destination:DetailView()) {
                        Text("View Details")
                            .foregroundColor(.blue)
                }
                .navigationTitle("Home")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
