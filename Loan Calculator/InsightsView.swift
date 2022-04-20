//
//  InsightsView.swift
//  Loan Calculator
//
//  Created by Reza Enayati on 4/19/22.
//

import SwiftUI

struct InsightsView: View {
    let k = K()
    @State var paymnetValue: Double
    var body: some View {
        ZStack{
            VStack{
                BarTitle(text: "Insights")
                Group {
                    HStack {
                        TextLabelAndLabel(title: "Principle Amount", fontSize: 15)
                        TextLabelAndLabel(title: "Rate", fontSize: 15)
                    }
                    Spacer()
                    TextLabelAndLabel(title: "Total Loan", fontSize: 20)
                    Spacer()
                    TextLabelAndLabel(title: "Duration", fontSize: 20)
                    Spacer()
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color(k.lightGreen))
                        .frame(width: 350, height: 170, alignment: .center)
                    Spacer()
                }
                Text("Change Payment Amount")
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .foregroundColor(Color(k.darkGreen))
                    .padding(.leading, 10)
                    .padding(.bottom)
                HStack {
                    Spacer()
                    Slider(value: $paymnetValue, in: -100...100, step: 1)
                        .padding()
                        .tint(Color(k.darkGreen))
                        .overlay(
                            RoundedRectangle(cornerRadius: 15.0)
                                .stroke(lineWidth: 2.0)
                                .foregroundColor(Color(k.darkGreen))
                    )
                    Spacer()
                }
            }
        }
    }
}

struct TextLabelAndLabel: View {
    let title: String
    let fontSize: Int
    let k = K()
    @State var principleAmountInt: String = "$10,000"
    var body: some View {
        
        VStack{
            Text(title)
                .font(.system(size: CGFloat(fontSize), weight: .semibold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color(k.darkGreen))
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(k.lightGreen))
                .frame(height: 40)
                .overlay(Text(principleAmountInt)
                    .multilineTextAlignment(.leading))
                .padding(.horizontal)
            
        }
    }
}

struct InsightsView_Previews: PreviewProvider {
    static var previews: some View {
        InsightsView(paymnetValue: 0.2)
    }
}
