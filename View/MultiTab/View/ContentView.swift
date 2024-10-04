//
//  ContentView.swift
//  MultiTab
//
//  Created by alumno on 4/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView(){
            HomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(1)
            AboutView()
                .tabItem{
                    Image(systemName: "menucard.fill")
                    Text("About")
                }
                .tag(2)
            SettingsView()
                .tabItem{
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .tag(3)
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
