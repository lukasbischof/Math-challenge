//
// Created by Lukas Bischof on 28.10.19.
// Copyright (c) 2019 Lukas Bischof. All rights reserved.
//

import Foundation

let DivisionTileColor: UInt32 = 0xD84315

class DivisionCategory: SingleMathChallengeCategory {
  let generator: MathChallengeGenerator = Division()
  let tile = MathChallengeUITile(hexColor: DivisionTileColor, imageName: "division")
  let categoryName: String = "Division"
}
