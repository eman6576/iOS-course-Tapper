//
//  ViewController.swift
//  Tapper
//
//  Created by Emanuel  Guerrero on 1/17/16.
//  Copyright © 2016 Project Omicron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Outlets
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var howManyTapsTextField: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    @IBAction func onPlayButtonPressed(sender: UIButton!) {
        if howManyTapsTextField.text != nil && howManyTapsTextField.text != "" {
            
            logoImageView.hidden = true
            playButton.hidden = true
            howManyTapsTextField.hidden = true
            
            tapButton.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsTextField.text!)!
            currentTaps = 0
            
            updateTapsLabel()
        }
    }
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        currentTaps++
        updateTapsLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTextField.text = ""
        
        logoImageView.hidden = false
        playButton.hidden = false
        howManyTapsTextField.hidden = false
        
        tapButton.hidden = true
        tapsLabel.hidden = true
    }
    
    func updateTapsLabel() {
        tapsLabel.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
}

