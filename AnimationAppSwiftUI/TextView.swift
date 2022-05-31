//
//  TextView.swift
//  AnimationAppSwiftUI
//
//  Created by Aleksandr F. on 31.05.2022.
//

import SwiftUI

struct TextView: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            ZStack {
                
                Text("SwiftBook")
                    .foregroundColor(Color.yellow.opacity(0.4))
                    .font(.system(size: 50))
                    .bold()
                
                Text("SwiftBook")
                    .foregroundColor(.yellow)
                    .font(.system(size: 50))
                    .bold()
                    .mask(
                        
                        Capsule()
                            .fill(LinearGradient(gradient: .init(colors: [.clear,
                                .yellow, .clear]), startPoint: .top, endPoint: .bottom))
                            .rotationEffect(.init(degrees: 30))
                            .offset(x: self.show ? 180 : -130)
                    )
            }
        }
        .onAppear {
            withAnimation(Animation.default.speed(0.1).delay(0)
                .repeatForever(autoreverses: false)) {
                    self.show.toggle()
                }
        }
    }
}



struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
