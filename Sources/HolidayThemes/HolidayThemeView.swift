//
//  HolidayThemeView.swift
//  
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

public struct HolidayThemeView: UIViewRepresentable {
    public typealias UIViewType = UIView
    private let frame: CGRect
    private let themeData: HolidayThemeData
    
    public init(frame: CGRect, themeData: HolidayThemeData = HolidayThemeData()) {
        self.frame = frame
        self.themeData = themeData
    }
    
    public func makeUIView(context: Context) -> UIView {
        let size = CGSize(width: frame.width, height: frame.height)
        let host = UIView(frame: CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height))
        
        let particlesLayer = CAEmitterLayer()
        particlesLayer.frame = CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height)

        host.layer.addSublayer(particlesLayer)
        host.layer.masksToBounds = true

        particlesLayer.backgroundColor = themeData.backgroundColor.cgColor
        particlesLayer.emitterShape = .circle
        particlesLayer.emitterPosition = themeData.emitterPosition
        particlesLayer.emitterSize = themeData.emitterSize
        particlesLayer.emitterMode = themeData.emitterMode
        particlesLayer.renderMode = themeData.renderMode

        let image1 = themeData.particleImage?.cgImage

        let cell1 = CAEmitterCell()
        cell1.contents = image1
        cell1.name = themeData.particle.rawValue
        cell1.birthRate = themeData.birthRate
        cell1.lifetime = themeData.lifetime
        cell1.velocity = themeData.velocity
        cell1.velocityRange = themeData.velocityRange
        cell1.xAcceleration = themeData.xAcceleration
        cell1.yAcceleration = themeData.yAcceleration
        cell1.emissionRange = themeData.emissionRange
        cell1.spin = themeData.spin
        cell1.spinRange = themeData.spinRange
        cell1.scale = themeData.scale
        cell1.scaleRange = themeData.scaleRange
        particlesLayer.emitterCells = [cell1]
        
        return host
    }

    public func updateUIView(_ uiView: UIView, context: Context) {
    }
}
