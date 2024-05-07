//
//  NoseUIView.swift
//  KittySketchSwift
//
//  Created by Дарья Кобелева on 07.05.2024.
//

import SwiftUI

struct NoseUIView: View {
    var body: some View {
        
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middleX = width / 2
            let middleY = height / 2
            
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: middleX * 0.9, y: middleY * 1.004))
                    path.addQuadCurve(
                        to: CGPoint(x: middleX * 1.09, y: middleY),
                        control: CGPoint(x: size / 2, y: middleY * 0.9)
                    )
                    path.addLine(to: CGPoint(x: middleX * 1.09, y: middleY))
                    path.addLine(to: CGPoint(x: middleX, y: middleY * 1.04))
                    path.addLine(to: CGPoint(x: middleX * 0.89, y: middleY))
                    
                }
                .fill(.specialityPink)
                .stroke(.black,lineWidth: 7)
                
                Path { path in
                    path.move(to: CGPoint(x: middleX, y: middleY * 1.04))
                    path.addLine(to: CGPoint(x: middleX , y: middleY * 1.27))
                }
                .stroke(.black, style: StrokeStyle(lineWidth: 7, lineCap: .round))
                
                Path { path in
                    path.move(to: CGPoint(x: middleX, y: middleY * 1.08 ))
                    path.addQuadCurve(
                        to: CGPoint(x: middleX * 0.87, y: middleY * 1.14),
                        control: CGPoint(x: size / 2, y: middleY * 1.2)
                    )
                }
                .stroke(.black,lineWidth: 6)
                
                Path { path in
                    path.move(to: CGPoint(x: middleX, y: middleY * 1.08 ))
                    path.addQuadCurve(
                        to: CGPoint(x: middleX * 1.13, y: middleY * 1.14),
                        control: CGPoint(x: size / 2, y: middleY * 1.2)
                    )
                }
                .stroke(.black,lineWidth: 6)
            }
        }
    }
}


#Preview {
    NoseUIView()
}
