//
//  JerryApp.swift
//  Jerry
//
//  Created by 杨焱焜 on 2021/5/2.
//

import SwiftUI

@main
struct JerryApp: App {
    var body: some Scene {
        WindowGroup {
            Home()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}
