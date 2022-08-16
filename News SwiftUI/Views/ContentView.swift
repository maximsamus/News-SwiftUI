//
//  ContentView.swift
//  News SwiftUI
//
//  Created by Максим Самусь on 16.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager.shared
    
    var body: some View {
        NavigationView {
            List(networkManager.news) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("FRESH NEWS")
        }
        .onAppear {
            networkManager.fetchDate()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
