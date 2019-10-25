//
//  Challenge.swift
//  Math Challenge
//
//  Created by Lukas Bischof on 24.10.19.
//  Copyright © 2019 Lukas Bischof. All rights reserved.
//

import Foundation

class Challenge: NSObject {
  var challengeText: String
  var latex: String
  var answer = 0

  init(text: String, latex: String, andAnswer answer: Int) {
    self.challengeText = text
    self.answer = answer
    self.latex = latex

    super.init()
  }

  init(text: String, andAnswer answer: Int) {
    self.challengeText = text
    self.answer = answer
    self.latex = challengeText

    super.init()
  }

  func evaluateAnswer(_ answer: Int) -> Bool {
    return answer == self.answer
  }
}
