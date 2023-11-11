//
//  ViewController.swift
//  testProject
//
//  Created by Варвара Уткина on 07.11.2023.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonDidTapped() {
        if counter == 0 {
            startButton.setTitle("NEXT", for: .normal)
            greenLightView.backgroundColor = UIColor.init(
                red: 48/255,
                green: 209/255,
                blue: 88/255,
                alpha: 0.3
            )
            redLightView.backgroundColor = UIColor.red
        } else if counter == 1 {
            redLightView.backgroundColor = UIColor.init(
                red: 255/255,
                green: 38/255,
                blue: 0/255,
                alpha: 0.3
            )
            yellowLightView.backgroundColor = UIColor.yellow
        } else if counter == 2 {
            yellowLightView.backgroundColor = UIColor.init(
                red: 255/255,
                green: 251/255,
                blue: 0/255,
                alpha: 0.3
            )
            greenLightView.backgroundColor = UIColor.green
            counter = 0
            return
        }
        counter += 1
    }
    
}
