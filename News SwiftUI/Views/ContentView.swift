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
            //            .padding()
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

//struct Post: Identifiable {
//    let id: String
//    let title: String
//
//}

//let posts = [
// Post(id: "1", title: "1"),
// Post(id: "2", title: "2"),
// Post(id: "3", title: "3"),
//]
