//
//  ConnectView.swift
//  Test
//
//  Created by 杨焱焜 on 2021/5/4.
//

import SwiftUI

struct ConnectView: View {
    @Binding var isLoggedIn: Bool
    @State var choice: String?
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Connect")
                    .font(.system(size: 35, weight: .light))
                    .padding(.top, 20)
                    .padding(.horizontal)
                Spacer()
            }
            Spacer()
            if !isLoggedIn {
                HStack {
                    Spacer()
                    Text("No connection info")
                    Spacer()
                }
            } else {
                VStack {
                    Picker("Network", selection: $choice) {
                        Text("America").tag("America")
                        Text("Singapore").tag("Singapore")
                        Text("Japan").tag("Japan")
                    }
                    .padding(.horizontal, 40)
                }
            }
            Spacer()
        }
    }
}

struct ConnectView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectView(isLoggedIn: .constant(true))
    }
}
