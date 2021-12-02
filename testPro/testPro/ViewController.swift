//
//  ViewController.swift
//  testPro
//
//  Created by Stanislav Miloradov on 24/11/2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var sliderBoard: UISlider!
    

    var player = AVAudioPlayer()
    let slider = UISlider()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.slider.frame = CGRect(x: 0, y: 0, width: 200, height: 23)
        self.slider.center = self.view.center
        self.slider.minimumValue = 0.0
        self.slider.maximumValue = 100.0
        self.view.addSubview(slider)
        
        self.slider.addTarget(self, action: #selector(chengeSlider), for: .valueChanged)
        
        do {
            if let audioPath = Bundle.main.path(forResource: "gribi", ofType: "mp3") {
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                self.slider.maximumValue = Float(player.duration)
        }
        } catch {
            print("ERRoR")
        }
        self.player.play()
    }

    @objc func chengeSlider(sender: UISlider) {
        if sender == slider {
            self.player.currentTime = TimeInterval(slider.value)
        }
    }
    
    @IBAction func playButton(_ sender: Any) {
        self.player.play()
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        self.player.pause()
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        self.player.volume = self.sliderBoard.value
    }
    
}

