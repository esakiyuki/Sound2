//
//  ViewController.swift
//  Sound
//
//  Created by esaki yuki on 2020/05/10.
//  Copyright © 2020 esaki yuKki. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButten: UIButton!
    
    let drumSoundplayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownDrumButton() {
        
        drumButten.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        drumSoundplayer.currentTime = 0
        drumSoundplayer.play()
        
    }
    
    @IBAction func touchUpDrumButton() {
        drumButten.setImage(UIImage(named: "drumImage"), for: .normal)
    }


}

