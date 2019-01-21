//
//  ViewController.swift
//  Tipped
//
//  Created by Jay-son Alburg on 1/19/19.
//  Copyright © 2019 Jay'son Alburg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    
    @IBAction func CalculateTip(_ sender: Any) {
        // Get the Bill Amount
        
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.1,0.15,0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
}

