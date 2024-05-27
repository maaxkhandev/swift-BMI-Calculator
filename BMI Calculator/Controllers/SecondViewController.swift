//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Maaz Khan on 27/05/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {
 var bmiValue = "0.0"
    
    override func viewDidLoad() {
    super.viewDidLoad()
        let label = UILabel()
        label.text = "test"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
    
}
