//
//  BarTitle.swift
//  Loan Calculator
//
//  Created by Reza Enayati on 4/19/22.
//

import SwiftUI

struct BarTitle: View {
    let text: String
    var body: some View {
        let k = K()
        Text(text)
            .font(.system(size: 35, weight: .bold, design: .default))
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(Color(k.darkGreen))
            .multilineTextAlignment(.leading)
            .padding(.leading, 10)
            .padding(.bottom)
    }
}

struct BarTitle_Previews: PreviewProvider {
    static var previews: some View {
        BarTitle(text: "Calculator")
    }
}
