//
//  SPHAIR.swift
//  Math Challenge
//
//  Created by Lukas Bischof on 24.10.19.
//  Copyright © 2019 Lukas Bischof. All rights reserved.
//

class SPHAIR: MathChallengeCategory {
  let challengeDescription: String = "SPHAIR"

  func next() -> Challenge {
    let result = randomInt(1, 100)
    let denominator = randomInt(2, 9)

    var possibleNumeratorValues = [2, 3, 4, 5, 6, 7, 8, 9]
    let len = possibleNumeratorValues.count

    let x = result * denominator
    var hasChallenge = false
    var numerator = 0

    for _ in 0..<len {
      let indx = randomInt(0, possibleNumeratorValues.count - 1)
      let randNumerator = possibleNumeratorValues[indx]
      let tempResult = Double(x) / Double(randNumerator)

      if tempResult == Double(tempResult.rounded(.down)) && randNumerator != denominator {
        numerator = randNumerator
        hasChallenge = true
        break
      } else {
        possibleNumeratorValues.remove(at: indx)
      }
    }

    if hasChallenge {
      let multiplication = x / numerator
      return generateChallenge(numerator, denominator, multiplication, result)
    } else {
      return next()
    }
  }

  private func generateChallenge(_ numerator: Int, _ denominator: Int, _ multiplication: Int, _ result: Int) -> Challenge {
    let latex = "\\frac{\(numerator)}{\(denominator)} * \(multiplication)"
    return Challenge(text: "\(numerator)/\(denominator) * \(multiplication)", latex: latex, andAnswer: result)
  }
}
