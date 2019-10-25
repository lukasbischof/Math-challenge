//
//  MathChallengeRegistry.swift
//  Math Challenge
//
//  Created by Lukas Bischof on 24.10.19.
//  Copyright © 2019 Lukas Bischof. All rights reserved.
//

import Foundation

class MathChallengesRegistry: NSObject {
  class func registeredChallenges() -> Array<MathChallengeCategory> {
    var ret: Array<MathChallengeCategory> = [SPHAIR(), Division()]

//        var ret = [SPHAIR.init(), Squares(), Multiplication(), Division()]
//
//        for i in 2..<17 {
//            ret.append(OneNumberMultiplication.new(withNumber: i))
//        }
//
    for i in 1..<5 {
      ret.append(Addition(level: i))
    }
//
//        for i in 1..<5 {
//            ret.append(Subtraction.new(withLevel: i))
//        }
//
    return ret
  }
}
