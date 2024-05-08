//
//  MustacheView.swift
//  KittySketchSwift
//
//  Created by Дарья Кобелева on 08.05.2024.
//

import SwiftUI

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


#Preview {
    MustacheView()
        .position(CGPoint(x: 200, y: 50))
}
