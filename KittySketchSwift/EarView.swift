//
//  EarUIView.swift
//  KittySketchSwift
//
//  Created by Дарья Кобелева on 07.05.2024.
//

import SwiftUI

struct EarView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width //200
            let height = geometry.size.height // 200
            let size = min(width, height) // 200
            let nearLine = size * 0.1 // 20
            
            Path { path in
                path.move(to: CGPoint(x: width / 7.7, y: nearLine))   // Верхняя точка треугольника
                path.addLine(to: CGPoint(x: width / 5.5, y: height / 2.6))  // Левая нижняя точка
                path.addLine(to: CGPoint(x: width / 2.7, y: height / 4.7)) // Правая нижняя точка
                path.closeSubpath() // Закрывает путь, соединяя последнюю точку с первой
            }
            .fill(.white)
            .stroke(.black, lineWidth: 8)
            
            Path { path in
                path.move(to: CGPoint(x: width / 7.7, y: nearLine * 1.2))   // Верхняя точка треугольника
                path.addLine(to: CGPoint(x: width / 5.6, y: height / 2.6))  // Левая нижняя точка
                path.addLine(to: CGPoint(x: width / 3.9, y: height / 3.2)) // Правая нижняя точка
                path.closeSubpath() // Закрывает путь, соединяя последнюю точку с первой
            }
            .fill(.specialityPink)
            .stroke(.black, lineWidth: 8)

        }
    }
}

#Preview {
    EarView()
}
