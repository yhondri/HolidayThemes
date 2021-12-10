//
//  ContentView.swift
//  Example
//
//  Created by Yhondri Acosta Novas on 10/12/21.
//
// The MIT License (MIT)
//
// Copyright (c) 2021 Yhondri Acosta Novas
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import SwiftUI
import HolidayThemes

struct ContentView: View {
    var body: some View {
        VStack {
            EmiterFrameView(name: "Autum", particle: .autum, titleBackgroundColor: .orange)
            EmiterFrameView(name: "Spring", particle: .spring, titleBackgroundColor: .pink)
            EmiterFrameView(name: "Summer", particle: .summer, titleBackgroundColor: .yellow)
            EmiterFrameView(name: "Winter", particle: .winter, textColor: .black, titleBackgroundColor: .white, backgroundColor: .black)
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        )
    }
}

struct EmiterFrameView: View {
    let name: String
    let particle: Particle
    let textColor: Color
    let titleBackgroundColor: Color
    let backgroundColor: UIColor
    
    init(name: String, particle: Particle, textColor: Color = .white, titleBackgroundColor: Color, backgroundColor: UIColor = .clear) {
        self.name = name
        self.particle = particle
        self.textColor = textColor
        self.titleBackgroundColor = titleBackgroundColor
        self.backgroundColor = backgroundColor
    }
    
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 0) {
                HStack {
                    Spacer()
                    Text(name).font(.system(.title)).foregroundColor(textColor)
                    Spacer()
                }.background(titleBackgroundColor)
                HolidayThemeView(frame: proxy.frame(in: .local), themeData: HolidayThemeData(particle: particle, backgroundColor: backgroundColor))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
