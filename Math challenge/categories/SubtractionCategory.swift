//
// Created by Lukas Bischof on 28.10.19.
// Copyright (c) 2019 Lukas Bischof. All rights reserved.
//

import Foundation

let SubtractionTileColor: UInt32 = 0x00838F

class SubtractionCategory: MathChallengeCategory {
  let categoryName: String = "Subtraktion"
  let tile = MathChallengeUITile(hexColor: SubtractionTileColor, imageName: "sphair")

  func generators() -> [MathChallengeGenerator] {
    (1..<5).map { (level: Int) -> MathChallengeGenerator in Subtraction(level: level) }
  }
}
