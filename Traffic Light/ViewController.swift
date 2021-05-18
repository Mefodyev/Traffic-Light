//
//  ViewController.swift
//  Traffic Light
//
//  Created by Alexey Mefodyev on 18.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var tapCounter = 0
    
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        startButton.layer.cornerRadius = startButton.frame.size.height/2
        redLightView.layer.cornerRadius =  redLightView.frame.size.height/2
        yellowLightView.layer.cornerRadius = redLightView.frame.size.height/2
        greenLightView.layer.cornerRadius = redLightView.frame.size.height/2
        startButton.setTitle("START", for: .normal)

    }

    @IBAction func startButtonTouched(_ sender: Any) {
        
        tapCounter += 1
        
        if tapCounter > 3 {
            tapCounter = 0
        }
        
        switch tapCounter {
        case 0:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
            startButton.setTitle("START", for: .normal)

        case 1:
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
            startButton.setTitle("NEXT", for: .normal)
            print(tapCounter)
        case 2:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            greenLightView.alpha = 0.3
            startButton.setTitle("NEXT", for: .normal)
            print(tapCounter)

        case 3:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
            print(tapCounter)

        default:
            print("Unknown tap")
            print(tapCounter)
            
        }
        
    }
    

    
}

