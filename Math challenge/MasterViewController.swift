//
//  MasterViewController.swift
//  Math Challenge
//
//  Created by Lukas Bischof on 24.10.19.
//  Copyright © 2019 Lukas Bischof. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
  var detailViewController: DetailViewController? = nil

  override func viewDidLoad() {
    super.viewDidLoad()

    if let split = splitViewController {
      let controllers = split.viewControllers
      let navigationController = controllers[controllers.count - 1] as! UINavigationController

      detailViewController = navigationController.topViewController as? DetailViewController
    }
  }

  override func viewWillAppear(_ animated: Bool) {
    clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed

    super.viewWillAppear(animated)
  }

  // MARK: - Table View

  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return MathChallengesRegistry.registeredChallenges().count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    let challengeCategory = MathChallengesRegistry.registeredChallenges()[indexPath.row]

    cell.textLabel?.text = challengeCategory.challengeDescription

    return cell
  }

  override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    return false
  }

  // MARK: - Segues

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "showDetail" {
      prepareForDetailShow(segue: segue)
    }
  }

  private func prepareForDetailShow(segue: UIStoryboardSegue) {
    guard let indexPath = tableView.indexPathForSelectedRow else { return }

    let destinationNavigationController = segue.destination as! UINavigationController

    if let detailViewController = destinationNavigationController.topViewController as? DetailViewController {
      let challengeCategory = MathChallengesRegistry.registeredChallenges()[indexPath.row]

      prepareSegueDestinationViewController(detailViewController, forChallengeCategory: challengeCategory)
    }
  }

  private func prepareSegueDestinationViewController(_ controller: DetailViewController, forChallengeCategory challengeCategory: MathChallengeGenerator) {
    controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
    controller.navigationItem.leftItemsSupplementBackButton = true
    controller.challengeCategory = challengeCategory
    controller.title = controller.challengeCategory!.challengeDescription
  }
}
