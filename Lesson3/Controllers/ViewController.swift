//
//  ViewController.swift
//  Lesson3
//
//  Created by Guest User on 10.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewRectangle: UIView!
    @IBOutlet weak var btnOne: PrimaryButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func moveView(_ sender: Any) {
        btnOne.isEnabled = false
        viewRectangle.frame.origin.y += 50
        viewRectangle.backgroundColor = .red
            }
    
}

