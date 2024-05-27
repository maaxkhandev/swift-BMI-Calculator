//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
   var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let wieght = String(format: "%.0f", sender.value); weightLabel.text = "\(wieght)kg"
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value;
        let weight = weightSlider.value;
        calculatorBrain.calculateBMI(height: height, weight: weight)
//        let bmi = weight / pow(height, 2)
//        bmiValue = String(format: "%.1f", bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f", bmi)
//        
//        self.present(secondVC, animated: true, completion: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destincationVC = segue.destination as! ResultViewController
            destincationVC.bmiValue =   calculatorBrain.getBMIValue()
            destincationVC.advice =   calculatorBrain.getAdvice()
            destincationVC.color =   calculatorBrain.getColor()
//            destincationVC.bmiValue = bmiValue
        }
    }
}

