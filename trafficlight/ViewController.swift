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
        if  startOrNextButton.isEnabled {
            startOrNextButton.setTitle("NEXT", for: .normal)
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
        }
        /* startOrNextButton.setTitle("NEXT", for: .selected)
         if startOrNextButton.isSelected {
            startOrNextButton.title(for: .selected)
        }
            
           redLightView.alpha = 1
            greenLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            redLightView.alpha = 0.3
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.3
            redLightView.alpha = 0.3
            greenLightView.alpha = 0.3
            yellowLightView.alpha = 1
        } */
        
    }
    
}

