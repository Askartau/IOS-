//
//  ViewController.swift
//  Caculator
//
//  Created by Askar Serikkhanov on 9/5/19.
//  Copyright © 2019 Askar Serikkhanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calculator = Calculator()
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if calculator.performingMath == true {
            
            label.text = String(sender.tag-1)
            
            calculator.numberOnScreen = Double(label.text!)!
            
            calculator.performingMath = false
            
        }
            
        else {
            
            label.text = label.text! + String(sender.tag-1)
            
            calculator.numberOnScreen = Double(label.text!)!
            
        }
        
    }
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttons(_ sender: UIButton) {
//        c.operationTapped(sender: sender.tag)
//        label.text = String(c.result)
        
        if label.text != "" && sender.tag != 11 && sender.tag != 16{
            
            calculator.previousNumber = Double(label.text!)!
            
            if sender.tag == 12 { //Divide
                
                label.text = "/";
                
            }
            
            if sender.tag == 13 { //Multiply
                
                label.text = "x";
                
            }
            
            if sender.tag == 14 { //Subtract
                
                label.text = "-";
                
            }
            
            if sender.tag == 15 { //Add
                
                label.text = "+";
                
            }
            
            calculator.operation = sender.tag
            
            calculator.performingMath = true;
            
        }
            
        else if sender.tag == 16 {

            label.text = calculator.eval();

        }
            
        else if sender.tag == 11{
            label.text = ""
            calculator.clear();
            
        }
        
    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
    
}

