//
//  CircularProgressBar.swift
//  CircularProgressBar
//
//  Created by Kusal on 2024-01-19.
//

import SwiftUI

struct CircularProgressBar: View {
    
    @Binding var progress: Double
    
    @State var lineWidth: CGFloat = 20
    @State var lineColor: Color = Color.pink
    @State var backgroundLineColor: Color = Color.pink.opacity(0.5)
    
    @State var showProgress: Bool = true
    @State var fontSize: CGFloat = 50
    @State var fontColor: Color = Color.black
    
    var body: some View {
        GeometryReader(content: { geometry in
            ZStack{
                Circle()
                    .stroke(backgroundLineColor, lineWidth: lineWidth)
                Circle()
                    .trim(from: 0,to: progress)
                    .stroke(lineColor,style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                    .rotationEffect(.degrees(-90))
                    .animation(.easeOut, value: progress)
                Text(String(Int(progress*100)) + "%")
                    .frame(width: geometry.size.width - lineWidth * 2)
                    .font(.system(size: fontSize))
                    .bold()
                    .minimumScaleFactor(0.01)
                    .opacity(showProgress ? 1.0 : 0.0)
            }
        })
    }
}

#Preview {
    CircularProgressBar(progress: Binding.constant(0.5))
}

#Preview {
    ContentView()
}
