//
//  News.swift
//  News SwiftUI
//
//  Created by Максим Самусь on 16.08.2022.
//

struct News: Codable {
    let hits: [NewsDetail]
}

struct NewsDetail: Codable {
    let points: Int
    let title: String
    let url: String
}
