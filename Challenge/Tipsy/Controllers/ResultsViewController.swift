//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Gabriel Silva on 18/07/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var result : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = result
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
