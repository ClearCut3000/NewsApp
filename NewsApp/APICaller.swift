//
//  APICaller.swift
//  NewsApp
//
//  Created by Николай Никитин on 05.03.2022.
//

import Foundation

final class APICaller {

  //MARK: - Properties
  static let shared = APICaller()

  private init() {}

  struct Constants {
    static let topHeadlinesURL = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=eda6154a62744b7bbad849130a7f7b6f")
  }

  //MARK: - Methods

  public func getTopStories(completion: @escaping (Result<[String], Error>) -> Void) {
    guard let url = Constants.topHeadlinesURL else { return }
    let task = URLSession.shared.dataTask(with: url) { data, _, error in
      if let error = error {
        completion(.failure(error))
      } else if let data = data {
        do {
          let result = try JSONDecoder().decode(String.self, from: data)
        }
        catch {
          completion(.failure(error))
        }
      }
    }
    task.resume()
  }
}
