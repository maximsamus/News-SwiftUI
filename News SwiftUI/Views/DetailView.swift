//
//  DetailView.swift
//  News SwiftUI
//
//  Created by Максим Самусь on 16.08.2022.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "")
    }
}


struct WebView: UIViewRepresentable {
    let urlString: String?

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let urlSafe = urlString {
            if let url = URL(string: urlSafe) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
