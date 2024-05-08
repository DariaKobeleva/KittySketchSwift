//
//  HeadView.swift
//  KittySketchSwift
//
//  Created by Дарья Кобелева on 08.05.2024.
//

import SwiftUI

struct HeadView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let middleX = width / 2
            let middleY = height / 2
            
            Path { path in
                path.move(to: CGPoint(x: width / 2.7, y: height / 4.7))
                path.addLine(to: CGPoint(x: width / 1.6, y: height / 4.7))
                path.addLine(to: CGPoint(x: width / 1.22, y: height / 2.6))
                path.addLine(to: CGPoint(x: width / 1.19, y: middleY))
                path.addLine(to: CGPoint(x: width / 1.5, y: height / 1.37))
                path.addLine(to: CGPoint(x: middleX, y: height / 1.24))
                path.addLine(to: CGPoint(x: width / 3.17, y: height / 1.37))
                path.addLine(to: CGPoint(x: width / 6.7, y: middleY))
                path.addLine(to: CGPoint(x: width / 5.5, y: height / 2.6))
                path.closeSubpath() 
                
            }
            .fill(.white)
            .stroke(Color.black, lineWidth: 8)
        }
        
    }
}

#Preview {
    HeadView()
}
