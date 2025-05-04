//
//  ChartData.swift
//  C7MacroChallenge
//
//  Created by Fred Saffold on 4/30/25.
//

import Foundation
import SwiftUI

struct ChartEntry: Identifiable {
    let id = UUID()
    let category: String
    let value: Double
    let color: Color
}
//Fake chart data that will display until user input answers is coded out

let WhatsWorkingChartData: [ChartEntry] = [
    ChartEntry(category: "Boredom", value: 25, color: .blue),
    ChartEntry(category: "Loneliness", value: 35, color: .green),
    ChartEntry(category: "Payday", value: 40, color: .orange)
]

let WhatsNotWorkingChartData: [ChartEntry] = [
    ChartEntry(category: "Boredom", value: 25, color: .blue),
    ChartEntry(category: "Loneliness", value: 60, color: .green),
    ChartEntry(category: "Payday", value: 15, color: .orange)
]

let ConsistencyChartData: [ChartEntry] = [
    ChartEntry(category: "Gahook", value: 10, color: .blue),
    ChartEntry(category: "Tester", value: 25, color: .green),
    ChartEntry(category: "Wild", value: 75, color: .orange)
]

let ObstacleChartData: [ChartEntry] = [
    ChartEntry(category: "Smoking", value: 60, color: .blue),
    ChartEntry(category: "Gaming", value: 10, color: .green),
    ChartEntry(category: "Chess", value: 20, color: .orange)
]
