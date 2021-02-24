//
//  ChartViewWithAxes.swift
//  Coffee Counter (iOS)
//
//  Created by Malin Sundberg on 2021-02-22.
//

import SwiftUI

struct ChartViewWithAxes: View {
    let xAxisDescription: String?
    let yAxisDescription: String?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            yAxisDescription.map {
                Text($0)
                    .font(.footnote)
                    .bold()
            }
            
            HStack {
                Divider()
                ChartView()
            }
            
            Divider()
            
            HStack {
                Spacer()
                xAxisDescription.map {
                    Text($0)
                        .font(.footnote)
                        .bold()
                        .padding(.top)
                }
                Spacer()
            }
        }.padding()
    }
}

struct ChartViewWithAxes_Previews: PreviewProvider {
    static var previews: some View {
        ChartViewWithAxes(xAxisDescription: "X-Axis", yAxisDescription: "Y-Axis")
    }
}
