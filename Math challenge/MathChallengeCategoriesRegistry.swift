//
//  MathChallengeRegistry.swift
//  Math Challenge
//
//  Created by Lukas Bischof on 24.10.19.
//  Copyright © 2019 Lukas Bischof. All rights reserved.
//

import Foundation

class MathChallengeCategoriesRegistry: NSObject {
  class func registeredCategories() -> Array<MathChallengeCategory> {
    [
      SPHAIRCategory(),
      DivisionCategory(),
      MultiplicationCategory(),
      SquaresCategory(),
      AdditionCategory(),
      SubtractionCategory()
    ]
  }
}
