//
//  HomeViewModel.swift
//  Test
//
//  Created by 杨焱焜 on 2021/5/4.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var selectedTab = "Connect"
    @Published var isLoggedIn = false
    @Published var account = ""
    @Published var passowrd = ""
}
