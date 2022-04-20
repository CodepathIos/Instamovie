//
//  SettingsView.swift
//  Loan Calculator
//
//  Created by Reza Enayati on 4/19/22.
//

import SwiftUI

struct SettingsView: View {
    let k = K()
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1))
                .ignoresSafeArea()
                .navigationTitle("Settings")
            VStack{
                BarTitle(text: "Settings")
                Spacer()
                HStack {
                    Spacer()
                    Circle()
                        .fill(Color.gray)
                        .frame(width: 140, height: 140, alignment: .center)
                    Spacer()
                }
                Spacer()
                Button {
                    print("Name Tapped")
                } label: {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(k.lightGreen))
                        .frame(height: 45)
                        .overlay(Text("Change Information")
                            .font(.system(size: 26, weight: .bold, design: .default))
                            .frame(maxWidth: .infinity, alignment: .center)
                            .foregroundColor(Color(k.darkGreen))
                        .padding(.horizontal))
                }
                Button {
                    print("Name Tapped")
                } label: {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(k.lightGreen))
                        .frame(height: 45)
                        .overlay(Text("Change Email")
                            .font(.system(size: 26, weight: .bold, design: .default))
                            .frame(maxWidth: .infinity, alignment: .center)
                            .foregroundColor(Color(k.darkGreen))
                        .padding(.horizontal))
                }
                Button {
                    print("Name Tapped")
                } label: {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(k.lightGreen))
                        .frame(height: 45)
                        .overlay(Text("Change Password")
                            .font(.system(size: 26, weight: .bold, design: .default))
                            .frame(maxWidth: .infinity, alignment: .center)
                            .foregroundColor(Color(k.darkGreen))
                        .padding(.horizontal))
                }
                Spacer()
            }
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
