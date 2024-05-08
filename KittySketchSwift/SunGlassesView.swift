//
//  SunGlassesView.swift
//  KittySketchSwift
//
//  Created by Дарья Кобелева on 08.05.2024.
//

import SwiftUI

struct SunGlassesView: View {
    var body: some View {
        @State var isEyeClosed: Bool = false
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            // Веко
            Rectangle()
                .fill(.black.opacity(0.5))  // Полупрозрачное веко
                .frame(width: size, height: size)
                .clipShape(Rectangle())
                .offset(y: isEyeClosed ? 0 : -size)  // Позиция века
                .animation(.easeInOut(duration: 1), value: isEyeClosed)
            
                .frame(width: width, height: height, alignment: .center)
                .onTapGesture {
                    isEyeClosed.toggle()
                }
        }
            }
        }



#Preview {
    SunGlassesView()
}
