//
//  CounterView.swift
//  C7MacroChallenge
//
//  Created by Fahim Uddin on 4/29/25.
//

import SwiftUI

struct CounterView: View {
    
    let days = 4
    let hours = 1
    let minutes = 12
    let seconds = 38
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Current Streak")
                        .font(.system(size: 12, weight: .semibold, design: .monospaced))
                    Text("Started on Feb 21, 2025")
                        .font(.system(size: 8, weight: .light, design: .monospaced))
                        .padding(.top, 0.5)
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "square.and.arrow.up")
                }
                
            }
            .padding(.horizontal)
            
            HStack(spacing: 40) {
                timeComponent(value: days, label: "Days")
                timeComponent(value: hours, label: "Hour")
                timeComponent(value: minutes, label: "Minutes")
                timeComponent(value: seconds, label: "Seconds")
            }
            .padding(.bottom, 12)
            .padding(.top, 6)
        }
        .padding(.top, 12)
        .background(Color(.background))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(.separator), lineWidth: 1)
        )
        .shadow(radius: 3)
        .padding()
    }
    
    func timeComponent(value: Int, label: String) -> some View {
        VStack {
            Text("\(value)")
                .font(.system(size: 24, weight: .semibold, design: .monospaced))
            Text(label)
                .font(.system(size: 12, weight: .light, design: .monospaced))
        }
    }
}





#Preview {
    CounterView()
}
