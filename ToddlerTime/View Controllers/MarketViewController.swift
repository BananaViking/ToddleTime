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
    
    let primaryVC = FarmViewController()
    
    @IBAction func touchCard(_ sender: AnyObject) {
        guard let card = sender as? UIButton else { return }
        
        switch card.tag {
        case 200:
            flipCard(withImage: apple.image, on: card)
        case 201:
            flipCard(withImage: banana.image, on: card)
        case 202:
            flipCard(withImage: carrot.image, on: card)
        case 203:
            flipCard(withImage: broccoli.image, on: card)
        case 204:
            flipCard(withImage: strawberry.image, on: card)
        case 205:
            flipCard(withImage: pepper.image, on: card)
        default:
            print("unkown card touched")
            return
        }
    }
    
    
    // MARK: - Function Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBackground), name: .UIApplicationDidEnterBackground, object: nil)
        
        // refactor this code duplication
        let card0 = self.view.viewWithTag(200) as? UIButton
        let card1 = self.view.viewWithTag(201) as? UIButton
        let card2 = self.view.viewWithTag(202) as? UIButton
        let card3 = self.view.viewWithTag(203) as? UIButton
        let card4 = self.view.viewWithTag(204) as? UIButton
        let card5 = self.view.viewWithTag(205) as? UIButton
        
        primaryVC.setupButtonStyle(button: card0!)
        primaryVC.setupButtonStyle(button: card1!)
        primaryVC.setupButtonStyle(button: card2!)
        primaryVC.setupButtonStyle(button: card3!)
        primaryVC.setupButtonStyle(button: card4!)
        primaryVC.setupButtonStyle(button: card5!)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        primaryVC.playSound(forObject: "pageTurnSound")
        resetMarketCards()
    }
    
    
    // MARK: - Functions
    @objc func appDidEnterBackground() {
        resetMarketCards()
    }
    
    func flipCard(withImage image: UIImage, on button: UIButton) {
        if button.currentImage == image {
            primaryVC.playSound(forObject: "flipCardSound")
            button.setImage(nil, for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
        } else {
            button.setImage(image, for: .normal)
            
            switch image {
            case apple.image:
                primaryVC.playSound(forObject: apple.sound)
            case banana.image:
                primaryVC.playSound(forObject: banana.sound)
            case carrot.image:
                primaryVC.playSound(forObject: carrot.sound)
            case broccoli.image:
                primaryVC.playSound(forObject: broccoli.sound)
            case strawberry.image:
                primaryVC.playSound(forObject: strawberry.sound)
            case pepper.image:
                primaryVC.playSound(forObject: pepper.sound)
            default:
                print("error finding sound")
            }
        }
    }
    
    func resetMarketCards() {
        if let button0 = self.view.viewWithTag(200) as? UIButton {
            button0.setImage(nil, for: .normal)
            button0.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
        }
        if let button1 = self.view.viewWithTag(201) as? UIButton {
            button1.setImage(nil, for: .normal)
            button1.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
        }
        if let button2 = self.view.viewWithTag(202) as? UIButton {
            button2.setImage(nil, for: .normal)
            button2.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
        }
        if let button3 = self.view.viewWithTag(203) as? UIButton {
            button3.setImage(nil, for: .normal)
            button3.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
        }
        if let button4 = self.view.viewWithTag(204) as? UIButton {
            button4.setImage(nil, for: .normal)
            button4.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
        }
        if let button5 = self.view.viewWithTag(205) as? UIButton {
            button5.setImage(nil, for: .normal)
            button5.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
        }
    }
}
