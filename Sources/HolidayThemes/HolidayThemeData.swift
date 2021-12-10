//
//  HolidayThemeData.swift
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

import UIKit

public struct HolidayThemeData {
    let particle: Particle
    let particleImage: UIImage?
    let emitterPosition: CGPoint
    let emitterSize: CGSize
    let emitterMode: CAEmitterLayerEmitterMode
    let renderMode: CAEmitterLayerRenderMode
    let birthRate: Float
    let lifetime: Float
    let velocity: CGFloat
    let velocityRange: CGFloat
    let xAcceleration: CGFloat
    let yAcceleration: CGFloat
    let emissionRange: CGFloat
    let spin: CGFloat
    let spinRange: CGFloat
    let scale: CGFloat
    let scaleRange: CGFloat
    let backgroundColor: UIColor
    
    public init(particle: Particle = .autum, particleImage: UIImage? = nil) {
        self.init(frame: CGRect(x: 500, y: 0, width: 0, height: 0), particle: particle, particleImage: particleImage)
    }
    
    public init(frame: CGRect, particle: Particle = .autum, velocity: CGFloat = 60, particleImage: UIImage? = nil, backgroundColor: UIColor = .clear) {
        self.init(particle: particle,
                  particleImage: particleImage,
                  emitterPosition: CGPoint(x: frame.midX, y: 0),
                  emitterSize: CGSize(width: frame.width, height: 1),
                  emitterMode: .surface,
                  renderMode: .oldestLast,
                  birthRate: 60,
                  lifetime: 20,
                  velocity: velocity,
                  velocityRange: velocity/4,
                  xAcceleration: 5.0,
                  yAcceleration: 5.0,
                  emissionRange: 180.0 * (.pi / 180.0),
                  spin: -180,
                  spinRange: 180,
                  scale: 0.05,
                  scaleRange: 0.2,
                  backgroundColor: backgroundColor)
    }
    
    public init(particle: Particle,
                particleImage: UIImage?,
                emitterPosition: CGPoint,
                emitterSize: CGSize,
                emitterMode: CAEmitterLayerEmitterMode,
                renderMode: CAEmitterLayerRenderMode,
                birthRate: Float,
                lifetime: Float,
                velocity: CGFloat,
                velocityRange: CGFloat,
                xAcceleration: CGFloat,
                yAcceleration: CGFloat,
                emissionRange: CGFloat,
                spin: CGFloat,
                spinRange: CGFloat,
                scale: CGFloat,
                scaleRange: CGFloat,
                backgroundColor: UIColor = .clear) {
        self.particle = particle
        self.emitterPosition = emitterPosition
        self.emitterSize = emitterSize
        self.emitterMode = emitterMode
        self.renderMode = renderMode
        self.birthRate = birthRate
        self.lifetime = lifetime
        self.velocity = velocity
        self.velocityRange = velocityRange
        self.xAcceleration = xAcceleration
        self.yAcceleration = yAcceleration
        self.emissionRange = emissionRange
        self.spin = spin
        self.spinRange = spinRange
        self.scale = scale
        self.scaleRange = scaleRange
        self.backgroundColor = backgroundColor
        if let particleImage = particleImage {
            self.particleImage = particleImage
        } else {
            self.particleImage = UIImage(named: particle.rawValue, in: Bundle.module, with: .none)
        }
    }
}
