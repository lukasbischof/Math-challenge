//
//  MathChallenge.swift
//  Math Challenge
//
//  Created by Lukas Bischof on 24.10.19.
//  Copyright © 2019 Lukas Bischof. All rights reserved.
//

import Foundation
import GameplayKit

protocol MathChallengeCategory {
  var challengeDescription: String { get }
  func next() -> Challenge
}

let randomSource = GKMersenneTwisterRandomSource()

@inline(__always) func randomInt(_ min: Int, _ max: Int) -> Int {
  return min + (randomSource.nextInt(upperBound: max - min + 1))
}
