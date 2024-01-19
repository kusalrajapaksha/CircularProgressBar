//
//  ContentView.swift
//  CircularProgressBar
//
//  Created by Kusal on 2024-01-19.
//

import SwiftUI

struct ContentView: View {
    
    @State var progress: Double = 0.75
    var body: some View {
        VStack{
            circularProgressView
            
            HStack {
                // 4
                Slider(value: $progress, in: 0...1)
                // 5
                
            }.padding()
                        
        }
        .padding()
    }
    
    
    var circularProgressView: some View{
        CircularProgressBar(progress: $progress)
            .frame(width: 200,height: 200)
    }
}

#Preview {
    ContentView()
}
