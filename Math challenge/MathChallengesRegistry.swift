//
//  MathChallengeRegistry.swift
//  Math Challenge
//
//  Created by Lukas Bischof on 24.10.19.
//  Copyright © 2019 Lukas Bischof. All rights reserved.
//

import Foundation

class MathChallengesRegistry: NSObject {
  class func registeredChallenges() -> Array<MathChallengeGenerator> {
    var ret: Array<MathChallengeGenerator> = [SPHAIR(), Division(), Multiplication(), Squares()]

//        for i in 2..<17 {
//            ret.append(OneNumberMultiplication.new(withNumber: i))
//        }
//
    for i in 1..<5 {
      ret.append(Addition(level: i))
    }

    for i in 1..<5 {
      ret.append(Subtraction(level: i))
    }

    return ret
  }
}
