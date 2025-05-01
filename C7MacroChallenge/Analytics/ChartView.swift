//
//  ChartView.swift
//  C7MacroChallenge
//
//  Created by Fred Saffold on 4/30/25.
//

import SwiftUI
import Charts

struct ChartView: View {
    let data: [ChartEntry]

    var body: some View {
        Chart(data) { entry in
            SectorMark(
                angle: .value("Value", entry.value),
                //innerRadius: .ratio(0.5), this makes it a donut chart
                angularInset: 1
            )
            .foregroundStyle(by: .value("Category", entry.category))
        }
        .frame(width: 230, height: 230)
    }
}


#Preview {
    ChartView(data: WhatsWorkingChartData)
    ChartView(data: WhatsNotWorkingChartData)
}
