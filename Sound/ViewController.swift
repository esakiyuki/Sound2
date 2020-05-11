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
    @IBOutlet var pianoButten: UIButton!
    @IBOutlet var guitarButten: UIButton!
    
    let drumSoundplayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    let pianoSoundplayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    let guitarSoundplayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)

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
    
    @IBAction func touchDownPianoButton() {
        
        pianoButten.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        pianoSoundplayer.currentTime = 0
        pianoSoundplayer.play()
        
    }
    
    @IBAction func touchUpPianoButton() {
        pianoButten.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    @IBAction func touchDownGuitarButton() {
        
        guitarButten.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        guitarSoundplayer.currentTime = 0
        guitarSoundplayer.play()
        
    }
    
    @IBAction func touchUpGuitarButton() {
        guitarButten.setImage(UIImage(named: "guitarImage"), for: .normal)
    }




}

