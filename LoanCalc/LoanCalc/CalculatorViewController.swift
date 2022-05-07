//
//  CalculatorViewController.swift
//  LoanCalc
//
//  Created by Saiman Tamang on 4/15/22.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var principalAmountTextField: UITextField!
    @IBOutlet weak var loanRateTextField: UITextField!
    @IBOutlet weak var loanDurationTextField: UITextField!
    @IBOutlet weak var startDateTextField: UITextField!
    @IBOutlet weak var amountPaidTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //Appearance
        setTextFiledAppearance(textField: principalAmountTextField)
        setTextFiledAppearance(textField: loanRateTextField)
        setTextFiledAppearance(textField: loanDurationTextField)
        setTextFiledAppearance(textField: startDateTextField)
        setTextFiledAppearance(textField: amountPaidTextField)
    }
    
    @IBAction func calculatePayment(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                
            // Create a variable to store the name the user entered on textField
            let principal_amount = Double(principalAmountTextField.text!) ?? 0
            var interest_rate = Double(loanRateTextField.text!) ?? 0
            let loan_duration = Int(loanDurationTextField.text!) ?? 0
            interest_rate = interest_rate/100
            var total = principal_amount * (
                (interest_rate / 12) /
                    (1 - pow(1 + (interest_rate/12), -(Double(loan_duration * 12)))
                ))
            let roundedValue = round(total * 100) / 100.0
            total = roundedValue
            let total_loan = total*(Double(loan_duration * 12))
            // Create a new variable to store the instance of the SecondViewController
            // set the variable from the SecondViewController that will receive the data
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.principal_amount = principal_amount
            destinationVC.total = total
            destinationVC.total_loan = total_loan
            destinationVC.interest_rate = interest_rate
            destinationVC.loan_duration = loan_duration
        }
    }


