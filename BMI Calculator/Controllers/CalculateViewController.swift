//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var heightSlaider: UISlider!
    @IBOutlet weak var weightSlaider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func heihtSlider(_ sender: UISlider) {
        
        
        
        height.text = String (format: "%.2f", sender.value)+"m"
        
        
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        
        
        weight.text = String (format: "%.0f", sender.value)+"Kg"
        
    }
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlaider.value
        let weight = weightSlaider.value
        
        var bmi = weight / (pow(height,2))
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    
    
    }
    
    
}

