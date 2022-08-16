//
//  News.swift
//  News SwiftUI
//
//  Created by Максим Самусь on 16.08.2022.
//

struct News: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        objectID
    }
    let points: Int
    let title: String
    let url: String?
    let objectID: String
}
