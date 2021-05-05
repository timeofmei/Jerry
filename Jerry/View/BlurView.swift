//
//  BlurView.swift
//  Test
//
//  Created by 杨焱焜 on 2021/5/4.
//

import SwiftUI

struct BlurView: NSViewRepresentable {
    func makeNSView(context: Context) -> NSVisualEffectView {
        let view = NSVisualEffectView()
        view.blendingMode = .behindWindow
        return view
    }

    func updateNSView(_ nsView: NSViewType, context: Context) {
    }
}
