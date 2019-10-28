//
//  SceneDelegate.swift
//  Math Challenge
//
//  Created by Lukas Bischof on 24.10.19.
//  Copyright © 2019 Lukas Bischof. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate, UISplitViewControllerDelegate {
  var window: UIWindow?

  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let window = window else { return }
    guard let splitViewController = window.rootViewController as? UISplitViewController else { return }
    guard let navigationController = splitViewController.viewControllers.last as? UINavigationController else { return }

    configureNavigationController(navigationController: navigationController, splitViewController: splitViewController)
  }

  private func configureNavigationController(navigationController: UINavigationController, splitViewController: UISplitViewController) {
    navigationController.topViewController?.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem
    navigationController.topViewController?.navigationItem.leftItemsSupplementBackButton = true

    splitViewController.delegate = self
  }

  // MARK: - Split view

  func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
    guard let secondaryAsNavController = secondaryViewController as? UINavigationController else {
      return false
    }

    guard let topAsDetailController = secondaryAsNavController.topViewController as? DetailViewController else {
      return false
    }

    return topAsDetailController.challengeGenerator == nil
  }
}
