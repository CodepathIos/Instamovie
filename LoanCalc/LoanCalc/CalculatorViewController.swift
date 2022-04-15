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
        //M = P((i / (1-(1+i (interest/12))^(-N (number of months)))
        let principal_amount = Double(PrincipalAmountTextField.text!) ?? 0
        var interest_rate = Double(LoanRateTextField.text!) ?? 0
        let loan_duration = Int(LoanDurationTextField.text!) ?? 0
        interest_rate = interest_rate/100
        let total = principal_amount * (
            (interest_rate / 12) /
                (1 - pow(1 + (interest_rate/12), -(Double(loan_duration * 12)))
            ))
        print(total)
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
