//
//  BodyView.swift
//  KittySketchSwift
//
//  Created by Дарья Кобелева on 08.05.2024.
//

import SwiftUI

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
                path.closeSubpath()
                
            }
            .fill(.white)
            .stroke(.black, lineWidth: 8)
        }
    }
    
}

#Preview {
    BodyView()
}
