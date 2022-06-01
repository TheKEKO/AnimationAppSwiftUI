//
//  ContentView.swift
//  AnimationAppSwiftUI
//
//  Created by Aleksandr F. on 30.05.2022.
//

import SwiftUI


struct ContentView: View {
    @State private var onOff = false
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                Button(action: buttonAction) {
                    VStack {
                        VStack {
                            Spacer()
                            if onOff {
                                Spacer()
                                TextView()
                                    .transition(.identity)
                                LightView()
                                    .transition(.identity)
                                    .frame(width: 200, height: 250)
                            }
                        }
                        Image(systemName: onOff ? "flashlight.on.fill" :
                                "flashlight.off.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 120, height: 170)
                        
                        Image(systemName: "power.circle.fill")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundColor(onOff ? .red : .green)
                            .rotation3DEffect(.degrees(onOff ? 0 : 180), axis:
                                                (x: 0, y: 1, z: 0))
                            .animation(Animation.easeOut(duration: 0.7), value: onOff)
                    }
                }
            }
            .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
        }
    }
    
    private func buttonAction() {
        withAnimation {
            onOff.toggle()
            SoundManager.instance.playSound()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

