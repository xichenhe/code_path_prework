//
//  ViewController.swift
//  prework
//
//  Created by Season on 2021/9/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount from the text field input
        let bill=Double(billAmountTextField.text!) ?? 0
        
        // get total tip by multiplying tip*tip percentage
        let tipPercentages=[0.15,0.18,0.20]
        let tip=bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total=bill+tip
        
        //Update tip amount label
        tipAmountLabel.text=String(format: "$%.2f", tip)
        //update total amount
        totalLabel.text=String(format: "$%.2f", total)
    }
    
}

