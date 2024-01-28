//
//  SettingsView.swift
//  SwiftChat
//
//  Created by Chris Min on 26/01/2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            VStack(spacing: 32) {
                
                // SETTINGS HEADER
                SettingsHeaderView()
                
                // SETTINGS CELLS
                VStack(spacing: 1) {
                    SettingsCell(image: "key.fill", text: "Account", color: .blue)
                    SettingsCell(image: "bell.badge.fill", text: "Notications", color: .red)
                    SettingsCell(image: "star.fill", text: "Starred Messages", color: .yellow)
                }
                .padding()
                
                // LOG OUT BUTTON
                Button(action: {
                    
                }, label: {
                    Text("Log Out")
                        .foregroundStyle(Color(.red))
                        .frame(width: UIScreen.main.bounds.width, height: 50)
                        .background(Color(.white))
                })
                .padding()
                
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    SettingsView()
}
