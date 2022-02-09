//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculateBrain()
    
    
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
        
        
        calculatorBrain.calculateBMI(height: heightSlaider.value, weight: weightSlaider.value)
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self) // goToResult se creo en la conexion de los view
        
    
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController // aca es la funcion que se implementa para ejecutar la segunda view, y se pone el if para confimara que sea esa porque pueden ser varias, y se debe poner as y clase para que se active 
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

