//
//  AudioPlay.swift
//  musiccoli
//
//  Created by κΉμν on 2022/05/03.
//

import SwiftUI
import AVKit
import AVFAudio
import AVFoundation


class streamingMusicPlayer {
    public static var instance = streamingMusicPlayer()
    var player = AVPlayer()

    func initPlayer(url: String) {
        guard let url = URL(string: url) else { return }
        let playerItem = AVPlayerItem(url: url)
        player = AVPlayer(playerItem: playerItem)
        playAudioBackground()
    }
    
    
    func playAudioBackground() {
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, mode: AVAudioSession.Mode.default, options: [.mixWithOthers, .allowAirPlay])
            print("Playback OK")
            try AVAudioSession.sharedInstance().setActive(true)
            print("Session is Active")
        } catch {
            print(error)
        }
    }
    
    func pause(){
        player.pause()
    }
    
    func play() {
        player.play()
    }
}
