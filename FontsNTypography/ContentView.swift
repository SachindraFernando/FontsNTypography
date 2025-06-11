//
//  ContentView.swift
//  FontsNTypography
//
//  Created by Sachindra Fernando on 2025-06-11.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isBig = false
    
    var body: some View {
        VStack {
            
            Text("Hello, LargeTitle")
                .font(.largeTitle)
            Text("Hello, Title")
                .font(.title)
            Text("Hello, Title2")
                .font(.title2)
            Text("Hello, Title3")
                .font(.title3)
            
            Divider()
            
            Text("Hello, Headline")
                .font(.headline)
            Text("Hello, Subheadline")
                .font(.subheadline)
            Text("Hello, Body")
                .font(.body)
            Text("Hello, Callout")
                .font(.callout)
            Text("Hello, Caption")
                .font(.caption)
            Text("Hello, Caption2")
                .font(.caption2)
            Text("Hello, Footnote")
                .font(.footnote)
            
            Divider()
            
            // Static Poppins Regular
            Text("Hello, Poppins Regular")
                .font(.custom("Poppins-Regular", size: 20))
            
            // Static Poppins Bold
            Text("Hello, Poppins Bold")
                .font(.custom("Poppins-Bold", size: 20))
            
            // Scalable Poppins Regular (relative to body)
            Text("Hello, Scalable Body Poppins Regular")
                .font(.custom("Poppins-Regular", size: 20, relativeTo: .body))
            
            // Scalable Poppins Regular (relative to title)
            Text("Hello, Scalable Title Poppins Regular")
                .font(.custom("Poppins-Regular", size: 20, relativeTo: .title))
            
            Divider()
            
            Text("Hello, Custom Font")
                .font(.system(size: 20, weight: .bold, design: .serif))
            
            Divider()
            
            VStack(spacing: 20) {
                Text("Animated Font")
                    .font(isBig ? .largeTitle : .body)
                    .animation(.easeInOut, value: isBig)
                // Smooth transition
                Button("Toggle Font Size") {
                    withAnimation {
                        isBig.toggle()
                    }
                }.padding()
            }.padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Hello, Design Font")
                    .font(.system(size: 18, weight: .regular, design: .default))
                
                Text("Hello, Design Font")
                    .font(.system(.body, design: .default))
                
                Text("Hello, Design Font")
                    .font(.system(.body, design: .serif))
                
                Text("Hello, Design Font")
                    .font(.system(.body, design: .monospaced))
                
                Text("Hello, Design Font")
                    .font(.system(.body, design: .rounded))
                
                Text("Hello, Design Font")
                    .font(.system(.body, design: .rounded))
                    .fontWeight(.heavy)
            }
        }
    }
}

#Preview {
    ContentView()
}
