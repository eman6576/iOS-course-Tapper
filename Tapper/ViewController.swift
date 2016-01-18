//
//  ViewController.swift
//  Tapper
//
//  Created by Emanuel  Guerrero on 1/17/16.
//  Copyright © 2016 Project Omicron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var howMantTapsTextField: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onPlayButtonPressed(sender: UIButton!) {
        logoImageView.hidden = true
        playButton.hidden = true
        howMantTapsTextField.hidden = true
        
        tapButton.hidden = false
        tapsLabel.hidden = false
    }
}

