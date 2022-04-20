//
//  CalculatorViewController.swift
//  LoanCalc
//
//  Created by Saiman Tamang on 4/15/22.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var PrincipalAmountTextField: UITextField!
    
    @IBOutlet weak var LoanRateTextField: UITextField!
    
    @IBOutlet weak var LoanDurationTextField: UITextField!
    
    @IBOutlet weak var StartDateTextField: UITextField!
    
    @IBOutlet weak var AmountPaidTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculatePayment(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                
            // Create a variable to store the name the user entered on textField
            let principal_amount = Double(PrincipalAmountTextField.text!) ?? 0
            var interest_rate = Double(LoanRateTextField.text!) ?? 0
            let loan_duration = Int(LoanDurationTextField.text!) ?? 0
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
        
        /*
        // MARK: - Navigation
     
        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */
     
    }


