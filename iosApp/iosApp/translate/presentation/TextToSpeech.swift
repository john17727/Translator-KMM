//
//  TextToSpeech.swift
//  iosApp
//
//  Created by Juan Rincon on 12/25/22.
//  Copyright © 2022 orgName. All rights reserved.
//

import Foundation
import AVFoundation

struct TextToSpeech {
    private let synthesizer = AVSpeechSynthesizer()
    
    func speak(text: String, language: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: language)
        utterance.volume = 1
        synthesizer.speak(utterance)
    }
}
