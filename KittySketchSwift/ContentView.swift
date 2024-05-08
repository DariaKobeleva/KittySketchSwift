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
                //  let middleY = height / 2
                let nearLine = size * 0.1
                let farLine = size * 0.9
                
                CloudsView(duration: 8)
                    .position(CGPoint(x: middleX, y: nearLine / 2))
                    .frame(width: size / 2)
                CloudsView(duration: 10)
                    .position(CGPoint(x: middleX, y: nearLine * 4))
                    .frame(width: size / 1.5)
                CloudsView(duration: 15)
                    .position(CGPoint(x: middleX, y: nearLine * 2))
                    .frame(width: size / 1.5)
                
                BodyView()
                    .position(CGPoint(x: middleX, y: farLine))
                
                BowView()
                    .position(x: middleX , y: farLine)
                
                HeadView()
                    .position(x: middleX , y: farLine)

                EyeView()
                    .frame(width: size * 0.16)
                    .position(x: middleX - nearLine * 1.5, y: farLine)
                
                EyeView()
                    .frame(width: size * 0.16)
                    .position(x: middleX + nearLine * 1.5, y: farLine)
                
                NoseUIView()
                    .frame(width: size, height: size * 1.3)
                    .position(x: middleX , y: farLine * 1.14)
                
                MustacheView()
                MustacheView()
                    .scaleEffect(x: -1, y: 1)
            
                EarView()
                    .position(x: middleX , y: farLine)
                EarView()
                    .position(x: middleX, y: farLine)
                    .scaleEffect(x: -1, y: 1)
            }
            
            .aspectRatio(1, contentMode: .fit)
        }
    }
}


#Preview {
    CatView()
}
