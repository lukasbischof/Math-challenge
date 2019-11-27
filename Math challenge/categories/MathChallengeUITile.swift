//
// Created by Lukas Bischof on 27.11.19.
// Copyright (c) 2019 Lukas Bischof. All rights reserved.
//

import Foundation
import UIKit

struct MathChallengeUITile {
  let color: UIColor

  init(hexColor: UInt32) {
    self.color = MathChallengeUITile.colorFromHex(hex: hexColor)
  }

  static func colorFromHex(hex: UInt32) -> UIColor {
    let red = CGFloat(hex >> 16)
    let green = CGFloat((hex >> 8) & 0xff)
    let blue = CGFloat(hex & 0xff)

    return UIColor(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: 1.0)
  }
}
