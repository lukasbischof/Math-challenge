//
// Created by Lukas Bischof on 25.10.19.
// Copyright (c) 2019 Lukas Bischof. All rights reserved.
//

import Foundation

class Division: MathChallengeGenerator {
  let challengeDescription: String = "Division"

  func next() -> Challenge {
    let result = randomInt(2, 20)
    let denominator = randomInt(2, 20)
    let numerator = result * denominator

    return generateChallenge(numerator: numerator, denominator: denominator, result: result)
  }

  private func generateChallenge(numerator: Int, denominator: Int, result: Int) -> Challenge {
    let text = "\(numerator)/\(denominator)"
    let latex = "\(numerator)\\div\(denominator)"

    return Challenge(text: text, latex: latex, andAnswer: result)
  }
}
