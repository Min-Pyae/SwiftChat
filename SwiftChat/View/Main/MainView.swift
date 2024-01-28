//
//  MainView.swift
//  SwiftChat
//
//  Created by Chris Min on 26/01/2024.
//

import SwiftUI

struct MainView: View {
    
    @State var selectedIndex = 0
    
    var body: some View {
        
        NavigationView {
            
            // TABVIEW
            TabView(selection: $selectedIndex) {
                
                // CHAT TAB ITEM
                ChatsView()
                    .onTapGesture {
                        selectedIndex = 1
                    }
                    .tabItem {
                        Image(systemName: "bubble.left")
                    }
                    .tag(1)
                
                
                // CHANNELS TAB ITEM
                ChannelsView()
                    .onTapGesture {
                        selectedIndex = 2
                    }
                    .tabItem {
                        Image(systemName: "bubble.left.and.bubble.right")
                    }
                    .tag(2)
                
                
                // SETTINGS TAB ITEM
                SettingsView()
                    .onTapGesture {
                        selectedIndex = 3
                    }
                    .tabItem {
                        Image(systemName: "gear")
                    }
                    .tag(3)
            }
            .navigationTitle(title)
        }
    }
    
    var title: String {
        switch selectedIndex {
        case 1: return "Chats"
        case 2: return "Channels"
        case 3: return "Settings"
        default: return ""
        }
        
    }
}

#Preview {
    MainView()
}
