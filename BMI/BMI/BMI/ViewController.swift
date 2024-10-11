//
//  ViewController.swift
//  BMI
//
//  Created by english on 2024-09-17.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var height: UITextField!
    
    
    @IBOutlet weak var weight: UITextField!
    
    
    @IBOutlet weak var FinalLabel: UILabel!
    
    @IBAction func Calculate(_ sender: Any) {
        
        let height1 = Double(height.text ?? "") ?? 0
        let weight1 = Double(weight.text ?? "") ?? 0
        let result1 = weight1 / (Double(height1 * height1))
        
        if (result1 < 19){
            FinalLabel.text = "BMI CLASSIFICATION = UNDERWEIGHT"
        }
        else if (result1 >= 19 && result1 < 25 ){
            FinalLabel.text = "BMI CLASSIFICATION = Normal Weight"
        }
        else if (result1 >= 25 && result1 < 29 ){
            FinalLabel.text = "BMI CLASSIFICATION = Overweight"
        }
        else if (result1 >= 29 && result1 < 35 ){
            FinalLabel.text = "BMI CLASSIFICATION = Obesity"
        }
        else if (result1 >= 35 && result1 < 40 ){
            FinalLabel.text = "BMI CLASSIFICATION = Extreme Obesity"
        }
    
    }
}

