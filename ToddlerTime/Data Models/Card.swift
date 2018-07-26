//
//  Card.swift
//  ToddlerTime
//
//  Created by Banana Viking on 7/26/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit

class Card {
    var color: UIColor
    var image: String
    var sound: String
    
    init(type: String, color: UIColor, image: String, sound: String) {
        self.type = type
        self.color = color
        self.image = image
        self.sound = sound
    }
}

let cow = Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: "cowImage", sound: "cowSound")
let dog = Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: "dogImage", sound: "dogSound")
let chicken = Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: "chickenImage", sound: "chickenSound")
let pig = Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: "pigImage", sound: "pigSound")
let horse = Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: "horseImage", sound: "horseSound")
let cat = Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: "catImage", sound: "catSound")

let apple = Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: "appleImage", sound: "appleSound")
let banana = Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: "bananaImage", sound: "bananaSound")
let carrot = Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: "carrotImage", sound: "carrotSound")
let broccoli = Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: "broccoliImage", sound: "broccoliSound")
let strawberry = Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: "strawberryImage", sound: "strawberrySound")
let pepper = Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: "pepperImage", sound: "pepperSound")

let one = Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: "oneImage", sound: "oneSound")
let two = Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: "twoImage", sound: "twoSound")
let three = Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: "threeImage", sound: "threeSound")
let four = Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: "fourImage", sound: "fourSound")
let five = Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: "fiveImage", sound: "fiveSound")
let six = Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: "sixImage", sound: "sixSound")

let circle = Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: "circleImage", sound: "circleSound")
let square = Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: "squareImage", sound: "squareSound")
let traingle = Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: "triangleImage", sound: "triangleSound")
let diamond = Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: "diamondImage", sound: "diamondSound")
let star = Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: "starImage", sound: "starSound")
let heart = Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: "heartImage", sound: "heartSound")
