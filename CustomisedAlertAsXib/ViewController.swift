//
//  ViewController.swift
//  CustomisedAlertAsXib
//
//  Created by AFFIXUS IMAC1 on 5/4/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit
import SCLAlertView


class ViewController: UIViewController {

   
    
    @IBOutlet weak var lbhell: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dd(_ sender: UIButton) {
        let appearance = SCLAlertView.SCLAppearance(showCloseButton: false)
        let alert1 = SCLAlertView(appearance: appearance)
      
        let txt = alert1.addTextField("Update Location")
       alert1.addButton("Save") {
        alert1.hideView()
            self.lbhell.text = txt.text
        }
        alert1.showEdit("Edit View", subTitle: "This alert view shows a text box", colorStyle:0x2E7969)
    }
    
}

