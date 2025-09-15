//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        guard let title = sender.currentTitle else { return }
        switch title {
        case "C" :
            playSound(name: "C")
        case "D" :
            playSound(name: "D")
        case "E" :
            playSound(name: "E")
        case "F" :
            playSound(name: "F")
        case "G" :
            playSound(name: "G")
        case "A" :
            playSound(name: "A")
        case "B" :
            playSound(name: "B")
        default:
            break
        }
        
       
    }
   
    
    
    
    func playSound(name : String) {
        let url = Bundle.main.url(forResource: name, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


