//
// Created by Lukas Bischof on 25.10.19.
// Copyright (c) 2019 Lukas Bischof. All rights reserved.
//

import Foundation

class Multiplication: MathChallengeCategory {
  let challengeDescription: String = "Multiplikation (1-10)"

  func next() -> Challenge {
    let first = randomInt(2, 9)
    let second = randomInt(2, 9)

    return Challenge(text: "\(first) * \(second)", andAnswer: first * second)
  }
}
