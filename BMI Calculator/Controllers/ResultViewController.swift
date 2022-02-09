//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Nicolas Dolinkue on 07/02/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    

    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        self.view.backgroundColor = color
        
        
        

        
    }
    

    @IBAction func recalculate(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    

}
