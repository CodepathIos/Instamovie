//
//  ResultViewController.swift
//  LoanCalc
//
//  Created by Saiman Tamang on 4/20/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var PrincipalAmount: UILabel!
    
    @IBOutlet weak var InterestRate: UILabel!
    
    @IBOutlet weak var LoanDuration: UILabel!
    
    @IBOutlet weak var TotalLoan: UILabel!
    
    @IBOutlet weak var Total: UILabel!
    
    var principal_amount = 0.0
        var total = 0.0
        var total_loan = 0.0
        var interest_rate = 0.0
        var loan_duration = 0
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            PrincipalAmount.text = "Principal Amount: $" + String(principal_amount)
            LoanDuration.text = "Loan Duration: " + String(loan_duration) + " Years"
            InterestRate.text = "Interest Rate: " + String(interest_rate) + "%"
            TotalLoan.text = "Total Loan: $" + String(total_loan)
            Total.text = "Monthly Payment: $" + String(total)

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
