//
//  SettingsCell.swift
//  SwiftChat
//
//  Created by Chris Min on 28/01/2024.
//

import SwiftUI

struct SettingsCell: View {
    var image: String
    var text: String
    var color: Color
    
    var body: some View {
        VStack {
            HStack {
                
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22, height: 22)
                    .padding(6)
                    .foregroundStyle(Color(.white))
                    .background(Color(color))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                
                Text(text)
                    .font(.system(size: 16))
                
                Spacer()
                
                Image(systemName: "chevron.right")
                
            }
            .padding([.top, .horizontal])
            
            Divider()
        }
        .background(Color(.white))
    }
}

#Preview {
    SettingsCell(image: "star.fill", text: "Starred Messages", color: .yellow)
}
