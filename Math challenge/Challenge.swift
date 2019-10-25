//
//  Chllenge.swift
//  Math Challenge
//
//  Created by Lukas Bischof on 24.10.19.
//  Copyright © 2019 Lukas Bischof. All rights reserved.
//

import Foundation

class Challenge: NSObject {
  var challengeText: String?
  var answer = 0

  init(text: String?, andAnswer answer: Int) {
    super.init()

    self.challengeText = text
    self.answer = answer
  }

  func evaluateAnswer(_ answer: Int) -> Bool {
    return answer == self.answer
  }
}
