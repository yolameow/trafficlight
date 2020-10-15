//
//  ViewController.swift
//  trafficlight
//
//  Created by Mac on 14.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startOrNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        
        redLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
    }

    @IBAction func pressedButton() {
        
        
        if startOrNextButton.isEnabled {
            switch (redLightView.alpha, greenLightView.alpha, yellowLightView.alpha) {
            
            case (0.3, 0.3, 0.3):
                redLightView.alpha = 1.0
                startOrNextButton.setTitle("NEXT", for: .normal)
                
                fallthrough
            case (1.0, 0.3, 0.3):
                yellowLightView.alpha = 1.0
                redLightView.alpha = 0.3
                
                fallthrough
            case (0.3, 1.0, 0.3):
                greenLightView.alpha = 1.0
                yellowLightView.alpha = 0.3
                
                fallthrough
            case (0.3, 0.3, 1.0):
                redLightView.alpha = 1.0
                greenLightView.alpha = 0.3
            default:
                startOrNextButton.setTitle("NEXT", for: .normal)
            }
            }
        }
    }
    

