//
//  ChartData.swift
//  C7MacroChallenge
//
//  Created by Fred Saffold on 4/30/25.
//

import Foundation

struct ChartEntry: Identifiable {
    let id = UUID()
    let category: String
    let value: Double
}

let WhatsWorkingChartData: [ChartEntry] = [
    ChartEntry(category: "Boredom", value: 25),
    ChartEntry(category: "Loneliness", value: 35),
    ChartEntry(category: "Payday", value: 40)
]

let WhatsNotWorkingChartData: [ChartEntry] = [
    ChartEntry(category: "Boredom", value: 25),
    ChartEntry(category: "Loneliness", value: 60),
    ChartEntry(category: "Payday", value: 15)
]
