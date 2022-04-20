//
//  CustomTabView.swift
//  Loan Calculator
//
//  Created by Reza Enayati on 4/19/22.
//

import SwiftUI

struct CustomTabView: View {
    @Binding var selectedTab: Tab
    let k = K()
    var body: some View {
        ZStack {
            HStack{
                Spacer()
                Button {
                    selectedTab = .first
                } label: {
                    VStack{
                        Image(systemName: "function")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                    }
                    .foregroundColor(selectedTab == .first ? .primary : .gray)
                }
                Spacer()
                Button {
                    selectedTab = .second
                } label: {
                    VStack{
                        Image(systemName: "gearshape")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                    }
                    .foregroundColor(selectedTab == .second ? .primary : .gray)
                }
                Spacer()
            }
        }.background(Color(k.backgroundColor))
        
        
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView(selectedTab: .constant(.first))
            .previewLayout(.sizeThatFits)
        
    }
}
