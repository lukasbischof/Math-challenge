//
// Created by Lukas Bischof on 25.10.19.
// Copyright (c) 2019 Lukas Bischof. All rights reserved.
//

import Foundation

class Squares: MathChallengeCategory {
  let challengeDescription: String = "Quadrate"

  func next() -> Challenge {
    let random = randomInt(3, 20)

    return Challenge(text: "\(random)^2", andAnswer: random * random)
  }
}
