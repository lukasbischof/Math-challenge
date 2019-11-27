//
// Created by Lukas Bischof on 28.10.19.
// Copyright (c) 2019 Lukas Bischof. All rights reserved.
//

import Foundation

let SquaresTileColor: UInt32 = 0x9E9D24

class SquaresCategory: SingleMathChallengeCategory {
  let generator: MathChallengeGenerator = Squares()
  let tile = MathChallengeUITile(hexColor: SquaresTileColor)
  let categoryName: String = "2er Potenzen"
}
