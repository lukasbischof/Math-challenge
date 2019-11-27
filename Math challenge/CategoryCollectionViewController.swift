//
//  CategoryCollectionViewController.swift
//  Math Challenge
//
//  Created by Lukas Bischof on 27.11.19.
//  Copyright © 2019 Lukas Bischof. All rights reserved.
//

import UIKit

private let reuseIdentifier = "CategoryCell"

class CategoryCollectionViewController: UICollectionViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    self.collectionView.register(CategoryCollectionViewCell.nib(), forCellWithReuseIdentifier: reuseIdentifier)
  }

  // MARK: UICollectionViewDataSource

  override func numberOfSections(in collectionView: UICollectionView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 1
  }


  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of items
    return MathChallengeCategoriesRegistry.registeredCategories().count
  }

  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CategoryCollectionViewCell

    cell.configureForCategory(MathChallengeCategoriesRegistry.registeredCategories()[indexPath.row])

    return cell
  }

  // MARK: UICollectionViewDelegate

  override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
    true
  }

  override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
    false
  }

//  override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
//    false
//  }
//
//  override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
//
//  }
}
