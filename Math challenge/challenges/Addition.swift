//
// Created by Lukas Bischof on 24.10.19.
// Copyright (c) 2019 Lukas Bischof. All rights reserved.
//

import Foundation

class Addition: MathChallengeGenerator {
  let lowerBound: Int
  let upperBound: Int
  let level: Int
  var challengeDescription: String {
    get {
      return "Addition \(level + 1)-stellig"
    }
  }

  init(level: Int) {
    self.level = level
    self.lowerBound = Int(powf(10.0, Float(level)))
    self.upperBound = Int(powf(10.0, Float(level + 1))) - 1
  }

  func next() -> Challenge {
    let first = randomInt(lowerBound, upperBound)
    let second = randomInt(lowerBound, upperBound)

    return Challenge(text: "\(first) + \(second)", andAnswer: first + second)
  }
}
