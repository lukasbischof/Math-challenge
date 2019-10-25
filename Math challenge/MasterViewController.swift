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
      detailViewController = (controllers[controllers.count - 1] as! UINavigationController).topViewController as? DetailViewController
    }
  }

  override func viewWillAppear(_ animated: Bool) {
    clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed

    super.viewWillAppear(animated)
  }

  // MARK: - Segues

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "showDetail" {
      if let indexPath = tableView.indexPathForSelectedRow {
        let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
        controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
        controller.navigationItem.leftItemsSupplementBackButton = true
        controller.challengeCategory = MathChallengesRegistry.registeredChallenges()[indexPath.row]
        controller.title = controller.challengeCategory!.challengeDescription
        detailViewController = controller
      }
    }
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
}
