//
//  CloudsView.swift
//  KittySketchSwift
//
//  Created by Дарья Кобелева on 08.05.2024.
//

import SwiftUI

struct CloudsView: View {
    @State private var cloudOffset = CGFloat.zero
    
    let duration: Double
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                
                Image(systemName: "cloud.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geometry.size.width * 0.6)
                    .foregroundStyle(.white)
                    .offset(x: cloudOffset, y: geometry.size.height / 4)
                    .onAppear {
                        // Начальное и конечное положение
                        cloudOffset = -geometry.size.width
                        let endPosition = geometry.size.width * 1.5
                        
                        withAnimation(.linear(duration: duration).repeatForever(autoreverses: false)) {
                            cloudOffset = endPosition
                        }
                    }
                
                //Не получилось добавить границы, поэтому продублировала
                Image(systemName: "cloud")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geometry.size.width * 0.6)
                    .foregroundStyle(.black)
                    .offset(x: cloudOffset, y: geometry.size.height / 4)
                    .onAppear {
                        cloudOffset = -geometry.size.width
                        let endPosition = geometry.size.width * 1.5
                        
                        withAnimation(.linear(duration: duration).repeatForever(autoreverses: false)) {
                            cloudOffset = endPosition
                        }
                    }
            }
        }
    }
}


#Preview {
    CloudsView(duration: 5)
        .background(.cyan)
}
