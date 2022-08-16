//
//  NetworkManager.swift
//  News SwiftUI
//
//  Created by Максим Самусь on 16.08.2022.
//

import Foundation




class NetworkManager {
    
    func fetchDate() {
        
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            do {
                let rickAndMorty = try JSONDecoder().decode(RickAndMorty.self, from: data)
                DispatchQueue.main.async {
                    completion(rickAndMorty)
                }
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    
}


}



