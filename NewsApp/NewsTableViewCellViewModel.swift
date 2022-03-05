//
//  NewsTableViewCellViewModel.swift
//  NewsApp
//
//  Created by Николай Никитин on 05.03.2022.
//

import Foundation

class NewsTableViewCellViewModel {
  let title: String
  let subtitle: String
  let imageURL: URL?
  let imageData: Data? = nil

  init(title: String,
       subtitle: String,
       imageURL: URL?
  ) {
    self.title = title
    self.subtitle = subtitle
    self.imageURL = imageURL
  }
}
