//
//  YoutubePlayerView.swift
//
//  Created by ahmed hussien on 09/01/2024.
//

import SwiftUI
import WebKit

struct YoutubePlayerViewById: UIViewRepresentable {
    
    let yotubeId: String
    
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        return WKWebView(frame: .zero, configuration: config)
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(yotubeId)") else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}
