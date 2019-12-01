//
// Created by Lukas Bischof on 28.10.19.
// Copyright (c) 2019 Lukas Bischof. All rights reserved.
//

import Foundation

let MultiplicationTileColor: UInt32 = 0x6A1B9A

class MultiplicationCategory: SingleMathChallengeCategory {
  let generator: MathChallengeGenerator = Multiplication()
  let tile = MathChallengeUITile(hexColor: MultiplicationTileColor, imageName: "sphair")
  let categoryName: String = "Multiplikation"
}
