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
            
            Divider()
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Hello, Ultra Light Font")
                    .fontWeight(.ultraLight)
                Text("Hello, Thin Font")
                    .fontWeight(.thin)
                Text("Hello, Light Font")
                    .fontWeight(.light)
                Text("Hello, Regular Font")
                    .fontWeight(.regular)
                Text("Hello, Medium Font")
                    .fontWeight(.medium)
                Text("Hello, Semibold Font")
                    .fontWeight(.semibold)
                Text("Hello, Bold Font")
                    .fontWeight(.bold)
                Text("Hello, Heavy Font")
                    .fontWeight(.heavy)
                Text("Hello, Black Font")
                    .fontWeight(.black)
            }
            
            Divider()
            
            Text("Hello, Italicized Text")
               .italic()
            Text("Hello, Underlined Text")
               .underline()
            Text("Hello, Strikethrough Text")
               .strikethrough()
            
            Divider()
            
            Text("Hello, Pattern dot")
                .strikethrough(pattern: .dot)
            Text("Hello, Color pink")
               .strikethrough(pattern: .dash, color: .pink)
            Text("Hello, Pattern dot")
               .underline(pattern: .dot, color: .accentColor)
            
            Divider()
            
            HStack {
                VStack(alignment: .leading) {
                    Text("default")
                    Text("monospacedDigit").monospacedDigit()
                }

                VStack(alignment: .leading) {
                    Text("1234567890")
                    Text("1234567890").monospacedDigit()
                }
            }
            
            Divider()
            
            Text("Kerning Text - 2")
            .kerning(2)
            Text("Tracking Text - 2")
            .tracking(2)
            
            HStack {
                Text("some text")
                Text("baselineOffset").baselineOffset(15)
                Text("set")
                Text("to").baselineOffset(15).underline()
                Text("15").underline()
            }
            
            Divider()
            
            HStack(alignment: .firstTextBaseline) {
                Text("some text")
                Text("baselineOffset").baselineOffset(15)
                Text("set")
                Text("to").baselineOffset(15).underline()
                Text("15").underline()
            }
            
            Divider()
            
            HStack(alignment: .firstTextBaseline) {
                Text("set text width")

                VStack(alignment: .leading, spacing: 5) {
                    Text("expanded")
                        .fontWidth(.expanded)
                    Text("standard")
                        .fontWidth(.standard)
                    Text("condensed")
                        .fontWidth(.condensed)
                    Text("compressed")
                        .fontWidth(.compressed)
                }
            }
            
            Divider()
            
            Text("American Typewriter")
                .font(.custom("AmericanTypewriter", size: 18))
            Text("Copperplate")
                .font(.custom("Copperplate", size: 18))
            Text("Cochin font - fixedSize 18")
                .font(.custom("Cochin", fixedSize: 18)) // available iOS 14 and macOS 11
            Text("Cochin font - size 18")
                .font(.custom("Cochin", size: 18))
            Text("Cochin font - fixedSize 18 - relativeTo body")
                .font(.custom("Cochin", size: 18, relativeTo: .body))
            
            Divider()
        }
    }
}

#Preview {
    ContentView()
}
