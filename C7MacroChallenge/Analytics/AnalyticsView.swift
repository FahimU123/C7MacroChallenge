//
//  AnalyticsView.swift
//  C7MacroChallenge
//
//  Created by Fred Saffold on 4/30/25.
//

import SwiftUI
import Charts

struct AnalyticsView: View {
    var body: some View {
        ZStack {
            Color(.background)
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 17) {
                HStack {
                    
                    Text("Monthly")
                        .font(.title2)
                        .fontWeight(.bold)
                        .fontDesign(.monospaced)
                    Button(action: {}) {
                        Image(systemName: "chevron.down.circle.fill")
                            .foregroundColor(.black)
                    }
                }
                
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.top)

                // Whats working?
                VStack(alignment: .leading, spacing: 10) {
                    Text("WHATS WORKING?")
                        .font(.system(size: 20, weight: .semibold, design: .monospaced))
                        
                    Text("Where you did your best")
                        .font(.body)
                        .foregroundColor(.black.opacity(0.6))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)

                HStack {
                    Button(action: {}) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .padding()
                            .background(Circle().fill(Color.black))
                    }

                    Spacer()

                    ChartView(data: WhatsWorkingChartData)
                        .frame(width: 230, height: 230)

                    Spacer()

                    Button(action: {}) {
                        Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                            .padding()
                            .background(Circle().fill(Color.black))
                    }
                }
                .padding(.horizontal)

                Divider()
                    .padding(.vertical)

                // Whats not working?
                VStack(alignment: .leading, spacing: 10) {
                    Text("WHATS NOT WORKING?")
                        .font(.system(size: 20, weight: .semibold, design: .monospaced))
                    Text("What can be improved")
                        .font(.body)
                        .foregroundColor(.black.opacity(0.6))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)

                HStack {
                    Button(action: {}) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .padding()
                            .background(Circle().fill(Color.black))
                    }

                    Spacer()

                    ChartView(data: WhatsNotWorkingChartData)
                        .frame(width: 230, height: 230)

                    Spacer()

                    Button(action: {}) {
                        Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                            .padding()
                            .background(Circle().fill(Color.black))
                    }
                }
                .padding(.horizontal)
                .padding(.bottom)
                Spacer()
            }
        }
    }
}

#Preview {
    AnalyticsView()
}
