//
//  ViewController.swift
//  M2Calculator_Phipps
//
//  Created by Makendra Phipps on 1/27/26.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var operand1TextField: UITextField!
    
    @IBOutlet weak var operand2TextField: UITextField!
    
    
    @IBOutlet weak var selectOperator: UIButton!
    
    @IBAction func operatorButton(_ sender: Any) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let plusAction =  UIAlertAction(title: "+", style: .default){_ in self.selectOperator.setTitle("+", for: .normal)}
        actionSheet.addAction(plusAction)
        present(actionSheet, animated: true)
        let minusAction =  UIAlertAction(title: "-", style: .default){_ in self.selectOperator.setTitle("-", for: .normal)}
        actionSheet.addAction(minusAction)
        let multiplyAction =  UIAlertAction(title: "*", style: .default){_ in self.selectOperator.setTitle("*", for: .normal)}
        actionSheet.addAction(multiplyAction)
        let divideAction =  UIAlertAction(title: "/", style: .default){_ in self.selectOperator.setTitle("/", for: .normal)}
        actionSheet.addAction(divideAction)
        present(actionSheet, animated: true)
    }
    
    @IBOutlet weak var resultLabel: UITextField!
    
    @IBAction func resultButton(_ sender: Any) {
        //let op1 = Int(operand1TextField.text!)!
        //let op2 = Int(operand2TextField.text!)!
        //let op = selectOperator.title(for: .normal)!
        
        guard let op1 = operand1TextField.text, let a = Int(op1) else{
            return
        }
        guard let op2 = operand2TextField.text, let b = Int(op2) else{
            return
        }
        guard let op = selectOperator.title(for: .normal) else{
            return
        }
        
        /*
        if op == "+"{
            let result = a + b
            resultLabel.text = "\(result)"
        }
        else if op == "-"{
            let result = a - b
            resultLabel.text = "\(result)"
        }
        else if op == "*"{
            let result = a * b
            resultLabel.text = "\(result)"
        }
        else if op == "/"{
            let result = a / b
            resultLabel.text = "\(result)"
        }
        else{
            print("Invalid Operator")
        }
         */
        
        var result:Int? = nil
        switch(op){
        case "+":
            result = a + b
        case "-":
            result = a - b
        case "*":
            result = a * b
        case "/":
            result = a / b
        default:
            print("Invalid Operator")
        }
        
        resultLabel.text = "\(result)"
        
        /*
        if let op1 = operand1TextField.text{
            if let op1 = Int(op1){
                if let op2 = operand2TextField.text{
                    if let op2 = Int(op2){
                        if let op = selectOperator.title(for: .normal){
                                if op == "+"{
                                    let result = op1 + op2
                                    resultLabel.text = "\(result)"
                                }
                                else if op == "-"{
                                    let result = op1 - op2
                                    resultLabel.text = "\(result)"
                                }
                                else if op == "*"{
                                    let result = op1 * op2
                                    resultLabel.text = "\(result)"
                                }
                                else if op == "/"{
                                    let result = op1 / op2
                                    resultLabel.text = "\(result)"
                                }
                                else{
                                    print("Invalid Operator")
                                }
                            
                        }
                    }
                }
            }
        }
         */
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

//command+B : build your project
//command+R : run your project

