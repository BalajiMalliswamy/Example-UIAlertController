//
//  Alerts.swift
//  ExploringUIAlertView
//
//  Created by Balaji Malliswamy on 30/05/18.
//  Copyright © 2018 NFNLabs. All rights reserved.
//

import UIKit

class Alerts: NSObject {

    /**
     Simple Alert
     - Show alert with title and alert message and basic two actions
     - parameter controller: source viewcontroller to show the popup
     */
    func showSimpleAlert(controller: UIViewController) {
        let alert = UIAlertController(title: "Sign out?", message: "You can always access your content by signing back in", preferredStyle: UIAlertControllerStyle.alert)

        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: { _ in
            //Cancel Action
        }))
        alert.addAction(UIAlertAction(title: "Sign out",
                                      style: UIAlertActionStyle.default,
                                      handler: {(_: UIAlertAction!) in
                                        //Sign out action
        }))
        controller.present(alert, animated: true, completion: nil)
    }

    /**
     Simple Action Sheet
     - Show action sheet with title and alert message and actions
     - parameter controller: source viewcontroller to show the popup
     */
    func showSimpleActionSheet(controller: UIViewController) {
        let alert = UIAlertController(title: "Title", message: "Please Select an Option", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Approve", style: .default, handler: { (_) in
            print("User click Approve button")
        }))

        alert.addAction(UIAlertAction(title: "Edit", style: .default, handler: { (_) in
            print("User click Edit button")
        }))

        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (_) in
            print("User click Delete button")
        }))

        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { (_) in
            print("User click Dismiss button")
        }))

        controller.present(alert, animated: true, completion: {
            print("completion block")
        })
    }
    /**
     Simple Alert with Distructive button
     - parameter controller: source viewcontroller to show the popup
     */
    func showAlertWithDistructiveButton(controller: UIViewController) {
        let alert = UIAlertController(title: "Sign out?", message: "You can always access your content by signing back in", preferredStyle: UIAlertControllerStyle.alert)

        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: { _ in
            //Cancel Action
        }))
        alert.addAction(UIAlertAction(title: "Sign out",
                                      style: UIAlertActionStyle.destructive,
                                      handler: {(_: UIAlertAction!) in
                                        //Sign out action
        }))
        controller.present(alert, animated: true, completion: nil)
    }
    /**
     Simple Alert with more than 2 buttons
     - parameter controller: source viewcontroller to show the popup
     */
    func showAlertWithThreeButton(controller: UIViewController) {
        let alert = UIAlertController(title: "Alert", message: "Alert with more than 2 buttons", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Default", style: .default, handler: { (_) in
            print("You've pressed default")
        }))

        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (_) in
            print("You've pressed cancel")
        }))

        alert.addAction(UIAlertAction(title: "Destructive", style: .destructive, handler: { (_) in
            print("You've pressed the destructive")
        }))
        controller.present(alert, animated: true, completion: nil)
    }
    /**
     Simple Alert with Text input
     - parameter controller: source viewcontroller to show the popup
     */
    func showAlertWithTextField(controller: UIViewController) {
        let alertController = UIAlertController(title: "Add new tag", message: nil, preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: "Add", style: .default) { (_) in
            if let txtField = alertController.textFields?.first, let text = txtField.text {
                // operations
                print("Text==>" + text)
            }
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        alertController.addTextField { (textField) in
            textField.placeholder = "Tag"
        }
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        controller.present(alertController, animated: true, completion: nil)
    }
}
