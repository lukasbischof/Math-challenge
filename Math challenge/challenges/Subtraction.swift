//
// Created by Lukas Bischof on 25.10.19.
// Copyright (c) 2019 Lukas Bischof. All rights reserved.
//

import Foundation

class Subtraction: MathChallengeGenerator {
  var challengeDescription: String {
    get { "Subtraktion von \(lowerBound!) bis \(upperBound!)" }
  }

  private let level: Int
  private var lowerBound: Int!
  private var upperBound: Int!

  init(level: Int) {
    self.level = level
    self.lowerBound = bound(level - 1)
    self.upperBound = bound(level) - 1
  }

  func next() -> Challenge {
    let result = randomInt(lowerBound, upperBound)
    let right = randomInt(lowerBound, upperBound)
    let left = result + right

    return Challenge(text: "\(left) - \(right)", andAnswer: result)
  }

  private func bound(_ upper: Int) -> Int {
    return Int(powf(10.0, Float(upper)))
  }
}
