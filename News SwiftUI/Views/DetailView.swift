//
//  DetailView.swift
//  News SwiftUI
//
//  Created by Максим Самусь on 16.08.2022.
//

import SwiftUI

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
