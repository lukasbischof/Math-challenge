//
// Created by Lukas Bischof on 28.10.19.
// Copyright (c) 2019 Lukas Bischof. All rights reserved.
//

import Foundation

let SPHAIRTileColor: UInt32 = 0xC62828

class SPHAIRCategory: SingleMathChallengeCategory {
  let generator: MathChallengeGenerator = SPHAIR()
  let tile = MathChallengeUITile(hexColor: SPHAIRTileColor)
  let categoryName: String = "SPHAIR"
}
