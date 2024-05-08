//
//  EyeUIView.swift
//  KittySketchSwift
//
//  Created by Дарья Кобелева on 08.05.2024.
//

import SwiftUI

struct EyeView: View {
    @Binding var isAnimated: Bool
    @State private var pupilSize = 0.4
    
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
                ).strokeBorder(lineWidth: 7)
                
                Circle().fill(.black)
                    .frame(width: size * pupilSize)
                    .onChange(of: isAnimated) { _, _ in
                        if isAnimated {
                            withAnimation(.easeInOut(duration: 1).repeatForever(autoreverses: true)) {
                                pupilSize = 0.7
                            }
                        } else {
                            withAnimation() {
                                pupilSize = 0.4
                            }
                        }
                    }
                
                Circle().fill(.white)
                    .frame(width: size * 0.3)
                    .position(x: size / 5, y: size / 0.34)
                
            }
            .frame(width: width, height: height, alignment: .center)
        }
    }
}


#Preview {
    EyeView(isAnimated: .constant(true))
}
