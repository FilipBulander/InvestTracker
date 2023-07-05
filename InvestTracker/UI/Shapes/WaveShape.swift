//
//  WaveShape.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import SwiftUI

class WaveConstants {
    static var amplitude = 0.2
    static var frequency = 0.003
    static var phase: CGFloat {
        get {
            2 * Double.pi * WaveConstants.frequency * UIScreen.main.bounds.width - 2 * Double.pi
        }
    }
}


struct WaveShape: Shape {
    var amplitude: CGFloat
    var frequency: CGFloat
    var phase: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath()
        let width = rect.width
        let height = rect.height
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0, y: height * (1 - amplitude)))
        
        let step = 1 / width
        
        for angle in stride(from: 0, through: 2 * .pi * frequency * width, by: step) {
            let x = width * angle / (2 * .pi * frequency * width)
            let y = 1 - amplitude * sin(angle + phase) + (1 - amplitude)
            path.addLine(to: CGPoint(x: x, y: height * y))
        }
        
        path.addLine(to: CGPoint(x: width, y: 0))
        path.close()
        
        return Path(path.cgPath)
    }
}

struct WaveShape_Previews: PreviewProvider {
    static var previews: some View {
        WaveShape(amplitude: 0.5, frequency: 0.006, phase: Double.pi)
                    .fill(Color.blue)
                    .frame(height: 50)
                    .shadow(color: Color.blue, radius: 10)
    }
}
