//
//  CategoryCollectionViewCell.swift
//  Math Challenge
//
//  Created by Lukas Bischof on 27.11.19.
//  Copyright © 2019 Lukas Bischof. All rights reserved.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!
  @IBOutlet weak var iconView: UIImageView!
  
  class func nib() -> UINib {
    UINib(nibName: "CategoryCollectionViewCell", bundle: nil)
  }

  override func awakeFromNib() {
    super.awakeFromNib()

    let widthConstraint = self.widthAnchor.constraint(equalToConstant: self.frame.size.width)
    let heightConstraint = self.heightAnchor.constraint(equalToConstant: self.frame.size.height)

    NSLayoutConstraint.activate([widthConstraint, heightConstraint])

    self.contentView.layer.cornerRadius = 8.0
  }

  func configureForCategory(_ category: MathChallengeCategory) {
    self.contentView.backgroundColor = category.tile.color
    self.titleLabel.text = category.categoryName
    self.iconView.image = category.tile.icon
  }
}
