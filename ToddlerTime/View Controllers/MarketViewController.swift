//
//  MarketViewController.swift
//  ToddlerTime
//
//  Created by Banana Viking on 4/27/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit
import AVFoundation

class MarketViewController: UIViewController {
    
    @IBAction func touchCard0(_ sender: UIButton) {
        flipCard(withEmoji: "🍎", on: sender)
    }
    
    @IBAction func touchCard1(_ sender: UIButton) {
        flipCard(withEmoji: "🍌", on: sender)
    }
   
    @IBAction func touchCard2(_ sender: UIButton) {
        flipCard(withEmoji: "🥕", on: sender)
    }
    
    @IBAction func touchCard3(_ sender: UIButton) {
        flipCard(withEmoji: "🥦", on: sender)
    }
  
    @IBAction func touchCard4(_ sender: UIButton) {
        flipCard(withEmoji: "🍓", on: sender)
    }
    
    @IBAction func touchCard5(_ sender: UIButton) {
        flipCard(withEmoji: "🌶", on: sender)
    }
   
    var player: AVAudioPlayer?
    
    override func viewWillDisappear(_ animated: Bool) {
        playSound(forObject: "page")
        if let button0 = self.view.viewWithTag(200) as? UIButton {
            button0.setTitle("", for: .normal)
            button0.backgroundColor = #colorLiteral(red: 0.9921568627, green: 0.2666666667, blue: 0.2705882353, alpha: 1)
        }
        if let button1 = self.view.viewWithTag(201) as? UIButton {
            button1.setTitle("", for: .normal)
            button1.backgroundColor = #colorLiteral(red: 0.9921568627, green: 0.2666666667, blue: 0.2705882353, alpha: 1)
        }
        if let button2 = self.view.viewWithTag(202) as? UIButton {
            button2.setTitle("", for: .normal)
            button2.backgroundColor = #colorLiteral(red: 0.9921568627, green: 0.2666666667, blue: 0.2705882353, alpha: 1)
        }
        if let button3 = self.view.viewWithTag(203) as? UIButton {
            button3.setTitle("", for: .normal)
            button3.backgroundColor = #colorLiteral(red: 0.9921568627, green: 0.2666666667, blue: 0.2705882353, alpha: 1)
        }
        if let button4 = self.view.viewWithTag(204) as? UIButton {
            button4.setTitle("", for: .normal)
            button4.backgroundColor = #colorLiteral(red: 0.9921568627, green: 0.2666666667, blue: 0.2705882353, alpha: 1)
        }
        if let button5 = self.view.viewWithTag(205) as? UIButton {
            button5.setTitle("", for: .normal)
            button5.backgroundColor = #colorLiteral(red: 0.9921568627, green: 0.2666666667, blue: 0.2705882353, alpha: 1)
        }
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            playSound(forObject: "card")
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.9921568627, green: 0.2666666667, blue: 0.2705882353, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            if emoji == "🍎" {
                playSound(forObject: "apple")
            }
            
            if emoji == "🍌" {
                playSound(forObject: "banana")
            }
            
            if emoji == "🥕" {
                playSound(forObject: "carrot")
            }
            
            if emoji == "🥦" {
                playSound(forObject: "broccoli")
            }
            
            if emoji == "🍓" {
                playSound(forObject: "strawberry")
            }
           
            if emoji == "🌶" {
                playSound(forObject: "pepper")
            }
        }
    }
    
    func playSound(forObject: String) {
        guard let url = Bundle.main.url(forResource: forObject, withExtension: "wav") else {
            print("url not found")
            return
        }
        
        do {
            /// this codes for making this app ready to takeover the device audio
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            
            player!.play()
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }
    }
}
