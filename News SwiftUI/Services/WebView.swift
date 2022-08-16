//
//  WebView.swift
//  News SwiftUI
//
//  Created by Максим Самусь on 16.08.2022.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let urlSafe = urlString {
            if let url = URL(string: urlSafe) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
