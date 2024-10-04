//
//  SettingsView.swift
//  MultiTab
//
//  Created by alumno on 4/10/24.
//

import SwiftUI

struct SettingsView: View {
    @State private var notifications = true;
    @State private var sounds = true;
    @State private var receipts = true;
    @State private var notifyMeAbout = "Select";
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Notifications")) {
                    Toggle(isOn: $notifications) {
                        Text("Turn on notifications")
                    }
                    Picker("Notify Me About", selection: $notifyMeAbout) {
                                    Text("Direct Messages")
                                    Text("Mentions")
                                    Text("Anything")
                                }
                    Toggle("Play notification sounds", isOn: $sounds)
                    Toggle("Send read receipts", isOn: $receipts)
                }
                Section(header: Text("User Profiles")) {
                    Button("Clear Image Cache") {}
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
