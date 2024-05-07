//
//  ContentView.swift
//  KittySketchSwift
//
//  Created by Дарья Кобелева on 07.05.2024.
//

import SwiftUI

struct CatView: View {
    var body: some View {
        ZStack {
            Color(.cyan)
                .ignoresSafeArea()
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = geometry.size.height
                let size = min(width, height)
                let middleX = width / 2
                // let middleY = height / 2
                let nearLine = size * 0.1
                let farLine = size * 0.9
                
                //Тело
                BodyView()
                    .position(CGPoint(x: middleX, y: farLine))
                
                //Бант
                BowView()
                
                // Голова
                HeadView()
                    .position(x: middleX , y: farLine)
                //Глаза
                EyeView()
                    .frame(width: size * 0.16)
                    .position(x: middleX - nearLine * 1.5, y: farLine)
                
                EyeView()
                    .frame(width: size * 0.16)
                    .position(x: middleX + nearLine * 1.5, y: farLine)
                
                // Нос
                NoseUIView()
                    .frame(width: size, height: size * 1.3)
                    .position(x: middleX , y: farLine * 1.14)
                //Усы
                MustacheView()
                MustacheView()
                    .scaleEffect(x: -1, y: 1)
                    
                
                // Уши
                EarUIView()
                    .position(x: middleX , y: farLine)
                
                EarUIView()
                    .position(x: middleX, y: farLine)
                    .scaleEffect(x: -1, y: 1)
            }
            .aspectRatio(1, contentMode: .fit)
        }
    }
}

struct HeadView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width //200
            let height = geometry.size.height // 200
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
                path.closeSubpath() // Закрывает путь
                
            }
            .fill(.white)
            .stroke(Color.black, lineWidth: 8)
        }
        
    }
}

struct BodyView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
        
            Path { path in
                path.move(to: CGPoint(x: width / 3.17, y: height / 1.37))
                path.addLine(to: CGPoint(x: width / 6, y: height * 1.13 ))
                path.addLine(to: CGPoint(x: width / 1.18, y: height * 1.13 ))
                path.addLine(to: CGPoint(x: width / 1.5, y: height / 1.37))
                
            }
            .fill(.white)
            .stroke(.black, lineWidth: 8)
        }
    }
    
}

struct EyeView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            ZStack {
                Circle().fill(
                    RadialGradient(
                        gradient: Gradient(colors: [.white, .cyan, .black]),
                        center: .center,
                        startRadius: 1,
                        endRadius: size
                    )
                ).strokeBorder(lineWidth: 6)
                
                Circle().fill(.black)
                    .frame(width: size / 2)
                
                Circle().fill(.white)
                    .frame(width: size * 0.3)
                    .position(x: size / 5, y: size / 0.34)
                
            }
            .frame(width: width, height: height, alignment: .center)
        }
    }
}

struct MustacheView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let middleX = width / 2
        
            Path { path in
                path.move(to: CGPoint(x: middleX * 0.2, y: height * 0.98))
                path.addLine(to: CGPoint(x: width * 0.4, y: height * 1.04 ))
            }
            .stroke(.black, lineWidth: 7)
            
            Path { path in
                path.move(to: CGPoint(x: middleX * 0.2, y: height * 1.1))
                path.addLine(to: CGPoint(x: width * 0.4, y: height * 1.07 ))
            }
            .stroke(.black, lineWidth: 7)
            
            Path { path in
                path.move(to: CGPoint(x: middleX * 0.2, y: height * 1.2))
                path.addLine(to: CGPoint(x: width * 0.4, y: height * 1.09 ))
            }
            .stroke(.black, lineWidth: 7)
            
            Path { path in
                path.move(to: CGPoint(x: middleX * 0.2, y: height * 0.98))
                path.addLine(to: CGPoint(x: width * 0.4, y: height * 1.04 ))
            }
            .stroke(.black, lineWidth: 7)
        }
    }
    
}
//TODO: - доделать бант
struct BowView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let middleX = width / 2
            let middleY = height / 2
        
            Path { path in
                path.move(to: CGPoint(x: middleX + 100, y: middleY))
                path.addLine(to: CGPoint(x: middleX, y: middleY ))
                            
            }
            .fill(.white)
            .stroke(.red, lineWidth: 8)
        }
    }
    
}

#Preview {
    CatView()
}
