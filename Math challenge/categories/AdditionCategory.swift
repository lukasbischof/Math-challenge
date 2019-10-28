//
// Created by Lukas Bischof on 28.10.19.
// Copyright (c) 2019 Lukas Bischof. All rights reserved.
//

import Foundation

class AdditionCategory: MathChallengeCategory {
  let categoryName: String = "Addition"

  func generators() -> [MathChallengeGenerator] {
    (1..<5).map { (level: Int) -> MathChallengeGenerator in Addition(level: level) }
  }
}
