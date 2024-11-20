//
//  ViewController.swift
//  Homework-2-2-TrafficLight
//
//  Created by Алексей Журкин on 20.11.2024.
//

import UIKit

final class ViewController: UIViewController {
    // MARK: - IB Outlets
    
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var yellowView: UIView!
    
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    // MARK: - Overrides Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        
        buttonLabel.setTitle("Start".uppercased(), for: .normal)
        buttonLabel.layer.cornerRadius = 8
    }
    
    // MARK: - IB Actions
    @IBAction func buttonDidTapped(_ sender: UIButton) {
        buttonLabel.setTitle("Next".uppercased(), for: .normal)
        
        if redView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
            greenView.alpha = 0.3
        } else if yellowView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else if greenView.alpha == 1 {
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
        } else {
            redView.alpha = 1
        }
        
    }
}

