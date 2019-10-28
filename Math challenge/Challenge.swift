//
//  Challenge.swift
//  Math Challenge
//
//  Created by Lukas Bischof on 24.10.19.
//  Copyright © 2019 Lukas Bischof. All rights reserved.
//

import Foundation

struct Challenge {
  let challengeText: String
  let answer: Int

  fileprivate var _latex: String?
  var latex: String {
    get {
      _latex ?? challengeText
    }
  }

  init(text: String, latex: String, andAnswer answer: Int) {
    self.challengeText = text
    self.answer = answer
    self._latex = latex
  }

  init(text: String, andAnswer answer: Int) {
    self.challengeText = text
    self.answer = answer
    self._latex = challengeText
  }

  func evaluateAnswer(_ answer: Int) -> Bool {
    answer == self.answer
  }
}
