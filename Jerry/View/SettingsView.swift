//
//  SettingsView.swift
//  Test
//
//  Created by 杨焱焜 on 2021/5/4.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Settings")
                    .font(.system(size: 35, weight: .light))
                    .padding(.top, 20)
                    .padding(.horizontal)
                Spacer()
            }
            Spacer()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
