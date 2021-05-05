//
//  TabButton.swift
//  Test
//
//  Created by 杨焱焜 on 2021/5/4.
//

import SwiftUI

struct TabButton: View {
    var image: String
    var title: String
    @Binding var selectedTab: String

    var body: some View {
        Button(action: {
            withAnimation { selectedTab = title }
        }, label: {
            VStack(spacing: 7) {
                Image(systemName: image)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(selectedTab == title ? .white : .gray)

                Text(title)
                    .fontWeight(.semibold)
                    .font(.system(size: 11))
                    .foregroundColor(selectedTab == title ? .white : .gray)
            }
            .padding(.vertical, 8)
            .frame(width: 65)
            .contentShape(Rectangle())
            .background(Color.primary.opacity(selectedTab == title ? 0.15 : 0))
            .cornerRadius(12)
        })
            .buttonStyle(PlainButtonStyle())
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello")
    }
}
