//
//  Models.swift
//  NewsApp
//
//  Created by Николай Никитин on 05.03.2022.
//

import Foundation

struct APIResponse: Codable {
  let articles: [Article]
}

struct Article: Codable {
  let title: String
  let description: String?
  let url: String?
  let urlToImage: String?
  let publishedAt: String
}

struct Source: Codable {
  let name: String
}


