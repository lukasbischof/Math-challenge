//
// Created by Lukas Bischof on 28.10.19.
// Copyright (c) 2019 Lukas Bischof. All rights reserved.
//

import Foundation

let AdditionTileColor: UInt32 = 0x1565C0

class AdditionCategory: MathChallengeCategory {
  let categoryName: String = "Addition"
  let tile = MathChallengeUITile(hexColor: AdditionTileColor)

  func generators() -> [MathChallengeGenerator] {
    (1..<5).map { (level: Int) -> MathChallengeGenerator in Addition(level: level) }
  }
}
