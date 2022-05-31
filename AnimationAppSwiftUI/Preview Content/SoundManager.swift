//
//  SoundManager.swift
//  AnimationAppSwiftUI
//
//  Created by Aleksandr F. on 31.05.2022.
//

import Foundation
import AVKit

class SoundManager {

    static let instance = SoundManager()

    var player: AVAudioPlayer?

    func playSound() {

        guard let url = Bundle.main.url(forResource: "sound", withExtension: ".mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch _ {
            print("")
        }
    }
}


