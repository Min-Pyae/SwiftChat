//
//  MainView.swift
//  SwiftChat
//
//  Created by Chris Min on 26/01/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        NavigationView {
            
            // TABVIEW
            TabView {
                
                // CHAT TAB ITEM
                ChatsView()
                    .tabItem {
                        Image(systemName: "bubble.left")
                    }
                
                
                // CHANNELS TAB ITEM
                ChannelsView()
                    .tabItem {
                        Image(systemName: "bubble.left.and.bubble.right")
                    }
                
                
                // SETTINGS TAB ITEM
                SettingsView()
                    .tabItem {
                        Image(systemName: "gear")
                    }
            }
        }
    }
}

#Preview {
    MainView()
}
