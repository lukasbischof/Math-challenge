//
//  DetailViewController.swift
//  Math Challenge
//
//  Created by Lukas Bischof on 24.10.19.
//  Copyright © 2019 Lukas Bischof. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
  private var currentChallenge: Challenge!
  @IBOutlet weak var challengeLabel: UILabel!
  @IBOutlet weak var answerTextField: UITextField!
  @IBOutlet weak var answerButton: UIButton!

  var challengeCategory: MathChallengeCategory? {
    didSet {
      findNextChallenge()
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    configureView()
  }

  internal func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    let text = textField.text as NSString?
    let newText = text?.replacingCharacters(in: range, with: string) ?? ""

    return !evaluate(answer: Int(newText) ?? 0)
  }

  @IBAction func showAnswerButtonTapped(_ sender: UIButton) {
    sender.setTitle(String(currentChallenge.answer), for: .normal)
  }

  private func configureView() {
    answerTextField.delegate = self

    displayChallenge()
  }

  private func displayChallenge() {
    challengeLabel.text = currentChallenge.challengeText
    answerTextField.text = ""
    answerButton.setTitle("Antwort", for: .normal)
  }

  private func evaluate(answer: Int) -> Bool {
    if currentChallenge.evaluateAnswer(answer) {
      findNextChallenge()
      displayChallenge()

      return true
    }

    return false
  }

  private func findNextChallenge() {
    let oldAnswer = currentChallenge?.answer ?? 0
    repeat {
      currentChallenge = challengeCategory!.next()
    } while currentChallenge.answer == oldAnswer
  }
}
