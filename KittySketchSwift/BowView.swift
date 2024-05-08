//
//  BowView.swift
//  KittySketchSwift
//
//  Created by Дарья Кобелева on 08.05.2024.
//

import SwiftUI


struct BowView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let middleX = width / 2
            let middleY = height / 2
            
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: middleX , y: middleY * 1.74))
                    path.addLine(to: CGPoint(x: middleX / 1.4, y: middleY * 1.6 ))
                    path.addLine(to: CGPoint(x: middleX / 1.5, y: middleY * 1.9 ))
                    path.addLine(to: CGPoint(x: middleX , y: middleY * 1.75 ))
                    path.addLine(to: CGPoint(x: middleX * 1.27 , y: middleY / 0.63 ))
                    path.addLine(to: CGPoint(x: middleX * 1.3 , y: middleY * 1.9 ))
                    path.addLine(to: CGPoint(x: middleX , y: middleY * 1.75 ))
                    
                }
                .fill(.specialityPink)
                .stroke(.black, lineWidth: 7)
                
                Rectangle()
                    .fill(.white)
                    .frame(width: width * 0.07, height: height * 0.06)
                    .overlay(
                        Rectangle().stroke(.black, lineWidth: 7))
                    .position(x: middleX , y: middleY * 1.75)
            }
        }
    }
    
}

#Preview {
    BowView()
        .position(x: 200, y: 100)
}
