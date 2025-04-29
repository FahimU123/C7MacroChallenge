//
//  HomeView.swift
//  C7MacroChallenge
//
//  Created by Fahim Uddin on 4/29/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.background
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                Text("No Gamble")
                    .font(.system(size: 38, weight: .semibold, design: .monospaced))
                    .padding()
                
                CounterView()
                    .frame(width: 350)
                    .padding(.leading, 15)
                
                Button {
                    
                } label: {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.orange)
                        .frame(width: 310, height: 50)
                        .overlay(
                            Text("Reset Counter")
                                .font(.system(size: 17, weight: .medium))
                                .foregroundColor(.black)
                        )
                        .shadow(radius: 3)
                        .padding()
                        .padding(.bottom, 24)
                        .padding()
                    
                }
                
                HStack {
                    StatCardView()
                        .padding(.leading, 20)
                    
                }
                .padding()
                VStack {
                    Text("How are you feeling right now?")
                        .font(.system(size: 24, weight: .medium))
                        .padding()
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 32))
                            .foregroundColor(.black)
                            .padding()
                    }
                    Text("Check In")
                        .font(.system(size: 24, weight: .medium))
//                        .padding(.bottom, 30)
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

#Preview {
    HomeView()
}
