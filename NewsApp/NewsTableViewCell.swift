//
//  NewsTableViewCell.swift
//  NewsApp
//
//  Created by Николай Никитин on 05.03.2022.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

  //MARK: - Properties
  static let identifier = "NewsTableViewCell"

  private let newsTitleLabel: UILabel = {
    let label = UILabel()
    return label
  }()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
  }

  required init?(coder: NSCoder) {
    fatalError()
  }

  override func layoutSubviews() {
    super.layoutSubviews()

  }

  override func prepareForReuse() {
    super.prepareForReuse()
  }

  func configure(with viewModel: NewsTableViewCellViewModel) {

  }

}
