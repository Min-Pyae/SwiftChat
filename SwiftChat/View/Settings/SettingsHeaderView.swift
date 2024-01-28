//
//  SettingsHeaderView.swift
//  SwiftChat
//
//  Created by Chris Min on 28/01/2024.
//

import SwiftUI

struct SettingsHeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding()
            
            VStack(alignment: .leading) {
                Text("Chris Min")
                    .bold()
                    .font(.system(size: 18))
                
                Text("Available")
                    .font(.system(size: 14))
                    .foregroundStyle(Color(.gray))
            }
            
            Spacer()
        }
        .background(Color(.white))
        .padding()
    }
}


#Preview {
    SettingsHeaderView()
}
