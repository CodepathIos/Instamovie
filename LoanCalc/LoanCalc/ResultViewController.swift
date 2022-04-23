//
//  ResultViewController.swift
//  LoanCalc
//
//  Created by Saiman Tamang on 4/20/22.
//

import UIKit
import Charts

class ResultViewController: UIViewController {

    @IBOutlet weak var PrincipalAmount: UILabel!
    
    @IBOutlet weak var InterestRate: UILabel!
    
    @IBOutlet weak var LoanDuration: UILabel!
    
    @IBOutlet weak var TotalLoan: UILabel!
    
    @IBOutlet weak var Total: UILabel!
    
    var barChart = BarChartView()
    
    
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
    override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            let wierdShape = UIView(frame: CGRect(x: 0, y: 400, width: self.view.frame.size.width, height: self.view.frame.size.width))
            wierdShape.backgroundColor = .orange
            view.addSubview(wierdShape)
            barChart.frame = CGRect(x: 0, y: 400, width: self.view.frame.size.width, height: self.view.frame.size.width)
            barChart.center = wierdShape.center
            view.addSubview(barChart)
            var entries =  [BarChartDataEntry]()
            for x in 0...(loan_duration*12){
                entries.append(BarChartDataEntry(x: Double(x), y: (Double(x)*total)))
            }
            let set = BarChartDataSet(entries: entries)
            set.colors = ChartColorTemplates.joyful()
            let data = BarChartData(dataSet: set)
            barChart.data = data
     
            
        }

}
