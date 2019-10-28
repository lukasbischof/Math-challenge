//
// Created by Lukas Bischof on 28.10.19.
// Copyright (c) 2019 Lukas Bischof. All rights reserved.
//

import Foundation

protocol MathChallengeCategory {
  var categoryName: String { get }
  func generators() -> [MathChallengeGenerator]
}

protocol SingleMathChallengeCategory: MathChallengeCategory {
  var generator: MathChallengeGenerator { get }
}

extension SingleMathChallengeCategory {
  func generators() -> [MathChallengeGenerator] {
    [generator]
  }
}
