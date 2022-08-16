//
//  NetworkManager.swift
//  News SwiftUI
//
//  Created by Максим Самусь on 16.08.2022.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var news = [Post]()
    static let shared = NetworkManager()
    private init() {}
    
    func fetchDate() {
        
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            do {
                let results = try JSONDecoder().decode(News.self, from: data)
                DispatchQueue.main.async {
                    self.news = results.hits
                }
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
