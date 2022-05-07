//
//  ResultViewController.swift
//  LoanCalc
//
//  Created by Saiman Tamang on 4/20/22.
//

import UIKit
import Charts

class ResultViewController: UIViewController {

    @IBOutlet weak var principalAmountLabel: UILabel!
    @IBOutlet weak var interestRateLabel: UILabel!
    @IBOutlet weak var loanDurationLabel: UILabel!
    @IBOutlet weak var totalLoanLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var doc1Label: UILabel!
    
    var barChart = BarChartView()
        
        var principal_amount = 0.0
        var total = 0.0
        var total_loan = 0.0
        var interest_rate = 0.0
        var loan_duration = 0
        override func viewDidLoad() {
            super.viewDidLoad()
            //barChart.delegate = self
            // Do any additional setup after loading the view.
            principalAmountLabel.text = "Principal Amount: $" + String(principal_amount)
            loanDurationLabel.text = "Loan Duration: " + String(loan_duration) + " Years"
            interestRateLabel.text = "Interest Rate: " + String(interest_rate*100) + "%"
            totalLoanLabel.text = "Total Loan: $" + String(ceil(total_loan)) + " $"
            totalLabel.text = "Monthly Payment: $" + String(total) + " $"
            
            //Appearance
            setLabelAppreance(label: principalAmountLabel)
            setLabelAppreance(label: interestRateLabel)
            setLabelAppreance(label: loanDurationLabel)
            setLabelAppreance(label: totalLoanLabel)
            setLabelAppreance(label: totalLabel)
            
        }
        override func viewDidLayoutSubviews() {
            
            super.viewDidLayoutSubviews()
            let wierdShape = UIView(frame: CGRect(x: 0, y: 370, width: self.view.frame.size.width, height: self.view.frame.size.width))
            wierdShape.backgroundColor = .darkGreen
            view.addSubview(wierdShape)
            barChart.frame = CGRect(x: 0, y: 370, width: self.view.frame.size.width, height: self.view.frame.size.width)
            barChart.center = wierdShape.center
            view.addSubview(barChart)
            var entries =  [BarChartDataEntry]()
            for x in 0...(loan_duration*12){
                let test = round(total_loan-(Double(x)*total))
                if (test>=0)
                {
                    entries.append(BarChartDataEntry(x: Double(x), y: test))
                }
            }
            let set = BarChartDataSet(entries: entries)
            set.colors = ChartColorTemplates.joyful()
            let data = BarChartData(dataSet: set)
            barChart.data = data
            
            
        }
    
    var prevValue = 0
    @IBAction func sliderValueChange(_ sender: UISlider) {
               let currentValue = Int(sender.value)
               let roundedtotal = round(total * 100) / 100.0
               total = roundedtotal
               total = total + (Double(currentValue)-Double(prevValue))
               loan_duration = Int(total_loan/total)
               doc1Label.text = "Additional Amount: $" + "\(currentValue) "+"\(total)"
               prevValue = currentValue
               viewDidLayoutSubviews()
    }
}
