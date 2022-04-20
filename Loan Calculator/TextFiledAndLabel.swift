//
//  TextFiledAndLabel.swift
//  Loan Calculator
//
//  Created by Reza Enayati on 4/19/22.
//

import SwiftUI

struct TextFiledAndLabel: View {
    let title: String
    let placeHolder: String
    let k = K()
    @State var principleAmountInt: String = " "
    var body: some View {
        
        VStack{
            Text(title)
                .font(Font.title.weight(.semibold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color(k.darkGreen))
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
                RoundedRectangle(cornerRadius: 15)
                .fill(Color(k.lightGreen))
                .frame(height: 40)
                .overlay(TextField(placeHolder, text: $principleAmountInt)
                    .keyboardType(.decimalPad)
                    .padding())
                .padding(.horizontal)
            
        }
    }
}

struct TextFiledAndLabel_Previews: PreviewProvider {
    static var previews: some View {
        TextFiledAndLabel(title: "Principle Amount", placeHolder: "$0.0")
    }
}
