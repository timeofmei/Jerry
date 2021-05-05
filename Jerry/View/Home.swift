//
//  ContentView.swift
//  Test
//
//  Created by 杨焱焜 on 2021/5/4.
//

import SwiftUI

var screen = NSScreen.main!.visibleFrame
struct Home: View {
    @StateObject var homeData = HomeViewModel()
    var body: some View {
        HStack {
            VStack {
                TabButton(image: "paperplane", title: "Connect", selectedTab: $homeData.selectedTab)
                TabButton(image: homeData.isLoggedIn ? "key.fill" : "key", title: "Login", selectedTab: $homeData.selectedTab)
                TabButton(image: "gear", title: "Settings", selectedTab: $homeData.selectedTab)
                Spacer()
                TabButton(image: "person", title: "About", selectedTab: $homeData.selectedTab)
            }
            .padding(.horizontal, 13)
            .padding(.top, 45)
            .padding(.bottom, 20)
            .background(BlurView())
            
            ZStack {
                switch homeData.selectedTab {
                case "Connect":
                    ConnectView(isLoggedIn: $homeData.isLoggedIn)
                case "Login":
                    LoginView(account: $homeData.account, password: $homeData.passowrd, isLoggedIn: $homeData.isLoggedIn)
                case "Settings":
                    SettingsView()
                case "About":
                    AboutView()
                default:
                    Text("")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .ignoresSafeArea()
        .frame(width: screen.width / 3, height: screen.height / 2.5, alignment: .center)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
