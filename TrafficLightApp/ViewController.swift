//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by admin on 9/18/19.
//  Copyright © 2019 Timur Korolev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 65
        redLightView.alpha = 0.3
        yellowLightView.layer.cornerRadius = 65
        yellowLightView.alpha = 0.3
        greenLightView.layer.cornerRadius = 65
        greenLightView.alpha = 0.3
    }

    @IBAction func startButtonPressed() {
        if redLightView.alpha == 0.3 && yellowLightView.alpha == 0.3 && greenLightView.alpha == 0.3 {
            startButton.setTitle("NEXT", for: .normal)
            redLightView.alpha = 1
        } else if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        } else if greenLightView.alpha == 1 {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        }
        
    }
    
}

