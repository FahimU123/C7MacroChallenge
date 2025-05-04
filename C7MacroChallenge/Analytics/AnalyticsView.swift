//
//  AnalyticsView.swift
//  C7MacroChallenge
//
//  Created by Fred Saffold on 4/30/25.
//

import SwiftUI
import Charts

struct AnalyticsChartItem {
    let title: String
    let subtitle: String
    let chartData: [ChartEntry]
}

// Example chart data arrays
let whatsWorkingCharts: [AnalyticsChartItem] = [
    AnalyticsChartItem(title: "WHAT'S WORKING?", subtitle: "Where you did your best", chartData: WhatsWorkingChartData),
    AnalyticsChartItem(title: "CONSISTENCY", subtitle: "Most consistent behavior", chartData: ConsistencyChartData)
]

let whatsNotWorkingCharts: [AnalyticsChartItem] = [
    AnalyticsChartItem(title: "WHAT'S NOT WORKING?", subtitle: "What can be improved", chartData: WhatsNotWorkingChartData),
    AnalyticsChartItem(title: "OBSTACLES", subtitle: "Common struggles", chartData: ObstacleChartData)
]

struct AnalyticsView: View {
    @State private var workingIndex = 0
    @State private var notWorkingIndex = 0

    var body: some View {
        ZStack {
            Color(.background)
                .ignoresSafeArea()

            VStack(spacing: 12) {
                HStack {
                    Text("Monthly")
                        .font(.title2)
                        .fontWeight(.bold)
                        .fontDesign(.monospaced)
                        
                    Button(action: {}) {
                        Image(systemName: "chevron.down.circle.fill")
                            .foregroundColor(.black)
                            
                    }.padding()
                }
                
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.top)

            // Top Half
                let workingItem = whatsWorkingCharts[workingIndex]

                VStack(alignment: .leading, spacing: 10) {
                    Text(workingItem.title)
                        .font(.system(size: 20, weight: .semibold, design: .monospaced))
                    Text(workingItem.subtitle)
                        .font(.body)
                        .foregroundColor(.black.opacity(0.6))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)

                ZStack {
                    HStack(alignment: .center) {
                        Button(action: {
                            if workingIndex > 0 { workingIndex -= 1 }
                        }) {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                                .frame(width: 44, height: 44)
                                .background(Circle().fill(Color.black))
                        }
                        .padding(.horizontal, 8)

                        TabView(selection: $workingIndex) {
                            ForEach(0..<whatsWorkingCharts.count, id: \.self) { index in
                                ChartView(data: whatsWorkingCharts[index].chartData)
                                    .frame(width: 230, height: 230)
                                    .tag(index)
                            }
                        }
                        .frame(height: 230)
                        .tabViewStyle(.page(indexDisplayMode: .never))
                        .padding(.vertical, 4)
                        .animation(.easeInOut, value: workingIndex)

                        Button(action: {
                            if workingIndex < whatsWorkingCharts.count - 1 { workingIndex += 1 }
                        }) {
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .frame(width: 44, height: 44)
                                .background(Circle().fill(Color.black))
                        }
                        .padding(.horizontal, 8)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 230)
                    .padding(.horizontal)
                }
                .offset(y: -8)

                Divider()
                    
        // Bottom Half
                let notWorkingItem = whatsNotWorkingCharts[notWorkingIndex]

                VStack(alignment: .leading, spacing: 10) {
                    Text(notWorkingItem.title)
                        .font(.system(size: 20, weight: .semibold, design: .monospaced))
                    Text(notWorkingItem.subtitle)
                        .font(.body)
                        .foregroundColor(.black.opacity(0.6))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)

                ZStack {
                    HStack(alignment: .center) {
                        Button(action: {
                            if notWorkingIndex > 0 { notWorkingIndex -= 1 }
                        }) {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                                .frame(width: 44, height: 44)
                                .background(Circle().fill(Color.black))
                        }
                        .padding(.horizontal, 8)

                        TabView(selection: $notWorkingIndex) {
                            ForEach(0..<whatsNotWorkingCharts.count, id: \.self) { index in
                                ChartView(data: whatsNotWorkingCharts[index].chartData)
                                    .frame(width: 230, height: 230)
                                    .tag(index)
                            }
                        }
                        .frame(height: 230)
                        .tabViewStyle(.page(indexDisplayMode: .never))
                        .padding(.vertical, 4)
                        .animation(.easeInOut, value: notWorkingIndex)

                        Button(action: {
                            if notWorkingIndex < whatsNotWorkingCharts.count - 1 { notWorkingIndex += 1 }
                        }) {
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .frame(width: 44, height: 44)
                                .background(Circle().fill(Color.black))
                        }
                        .padding(.horizontal, 8)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 230)
                    .padding(.horizontal)
                }
                .offset(y: -8)
                Spacer()
            }
            .padding(.top, 44)
        }
    }
}

#Preview {
    AnalyticsView()
}
