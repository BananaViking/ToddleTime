//
//  MenuViewController.swift
//  DoorNumberOne
//
//  Created by Banana Viking on 4/27/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var farmButton: UIButton!
    @IBOutlet weak var marketButton: UIButton!
    @IBOutlet weak var numbersButton: UIButton!
    
    override func viewDidLoad() {
        farmButton.layer.cornerRadius = 4.5
        farmButton.layer.shadowColor = UIColor.black.cgColor
        farmButton.layer.shadowOffset = CGSize(width: 4.5, height: 4.5)
        farmButton.layer.shadowRadius = 4.5
        farmButton.layer.shadowOpacity = 1.0
        
        marketButton.layer.cornerRadius = 4.5
        marketButton.layer.shadowColor = UIColor.black.cgColor
        marketButton.layer.shadowOffset = CGSize(width: 4.5, height: 4.5)
        marketButton.layer.shadowRadius = 4.5
        marketButton.layer.shadowOpacity = 1.0
        
        numbersButton.layer.cornerRadius = 4.5
        numbersButton.layer.shadowColor = UIColor.black.cgColor
        numbersButton.layer.shadowOffset = CGSize(width: 4.5, height: 4.5)
        numbersButton.layer.shadowRadius = 4.5
        numbersButton.layer.shadowOpacity = 1.0

        super.viewDidLoad()
    }
}
