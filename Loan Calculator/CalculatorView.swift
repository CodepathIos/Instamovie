//
//  CalculatorView.swift
//  Loan Calculator
//
//  Created by Reza Enayati on 4/19/22.
//

import SwiftUI

struct CalculatorView: View {
    let k = K()
    @State private var isPresented = false
    var body: some View {
        ZStack {
            Color(k.backgroundColor)
            VStack{
                Spacer()
                BarTitle(text: "Calculator")
                TextFiledAndLabel(title: "Principle Amount", placeHolder: "$0.0")
                TextFiledAndLabel(title: "Loan Rate", placeHolder: "%")
                TextFiledAndLabel(title: "Loan Duration", placeHolder: "Years")
                VStack {
                    TextFiledAndLabel(title: "Start Date", placeHolder: "MM/DD/YYYY")
                    Text("(Optional)")
                        .font(.system(size: 10, weight: .bold, design: .default))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(Color(k.darkGreen))
                        .multilineTextAlignment(.leading)
                }
                VStack {
                    TextFiledAndLabel(title: "Amount Paid", placeHolder: "$")
                    Text("(Optional)")
                        .font(.system(size: 10, weight: .bold, design: .default))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(Color(k.darkGreen))
                        .multilineTextAlignment(.leading)
                }
                Spacer()
                Button {
                    print("Calculating")
                } label: {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(k.darkGreen))
                        .frame(width: 300, height: 60)
                        .padding(.horizontal)
                        .overlay(Text("Calculate")
                            .font(.system(size: 35))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(k.backgroundColor))
                        )
                }
                Spacer()
                
            }
        }.background(Color(k.backgroundColor))
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}

