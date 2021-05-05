//
//  AboutView.swift
//  Test
//
//  Created by 杨焱焜 on 2021/5/4.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            HStack {
                Text("About")
                    .font(.system(size: 35, weight: .light))
                    .padding(.top, 20)
                    .padding(.horizontal)
                Spacer()
            }
            Spacer()
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
