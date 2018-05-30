//
//  ViewController.swift
//  ExploringUIAlertView
//
//  Created by Balaji Malliswamy on 29/05/18.
//  Copyright © 2018 NFNLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func simpleAlertOnClick(_ sender: UIButton) {
        Alerts().showSimpleAlert(controller: self)
    }

    @IBAction func simpleActionSheetOnClick(_ sender: UIButton) {
        Alerts().showSimpleActionSheet(controller: self)
    }

    @IBAction func alertWithDistructiveOnClick(_ sender: UIButton) {
        Alerts().showAlertWithDistructiveButton(controller: self)
    }

    @IBAction func alertWithThreeButtonOnclick(_ sender: UIButton) {
        Alerts().showAlertWithThreeButton(controller: self)
    }

    @IBAction func alertWithTextFieldOnClick(_ sender: UIButton) {
        Alerts().showAlertWithTextField(controller: self)
    }
}
