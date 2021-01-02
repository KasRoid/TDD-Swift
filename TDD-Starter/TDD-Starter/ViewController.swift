//
//  ViewController.swift
//  TDD-Starter
//
//  Created by Kas Song on 1/2/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    private let calculatorBrain = CalculatorBrain()
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Selectors
    @IBAction func handleButton(_ sender: UIButton) {
        print(#function)
        guard let text1 = textField1.text,
              let text2 = textField2.text,
              let number1 = Int(text1),
              let number2 = Int(text2) else { return }
        calculatorBrain.divideTwoNumbers(dividend: number1,
                                         divisor: number2,
                                         completion: { result, error in
                                            guard error == nil else { print("Guard"); return }
                                            let formatter = NumberFormatter()
                                            formatter.numberStyle = .decimal
                                            guard let number = result as NSNumber? else { return }
                                            self.resultLabel.text = formatter.string(from: number)
                                         })
    }
}

