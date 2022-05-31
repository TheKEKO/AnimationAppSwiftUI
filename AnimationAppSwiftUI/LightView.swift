//
//  LightView.swift
//  AnimationAppSwiftUI
//
//  Created by Aleksandr F. on 30.05.2022.
//


import SwiftUI

struct LightView: View {
    var body: some View {
        VStack {
            
            Path { path in
                path.move(to: CGPoint(x: 70, y: 250))
                path.addLine(to: CGPoint(x: 130, y: 250))
                path.addLine(to: CGPoint(x: 200, y: 0))
                path.addLine(to: CGPoint(x: 0, y: 0))
            }
            .fill(
                LinearGradient(gradient: Gradient(colors: [.clear, .yellow, .clear]),
                    startPoint: .bottom,
                           endPoint: .top))
            .scaleEffect(1.4)
        }
    }
}


struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView()
            .frame(width: 200, height: 250)
    }
}

