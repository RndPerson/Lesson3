//
//  SecondViewController.swift
//  Lesson3
//
//  Created by Guest User on 11.12.2020.
//

import UIKit

class SecondViewController : UIViewController {
    
    var cnt: CGFloat = 0
    
    private var lastTranslation: CGFloat = 0
    
    let numLabel: UILabel = {
    let label = UILabel()
        label.text = "0"
        label.translatesAutoresizingMaskIntoConstraints = false
    return label
    }()
    
    let touchView: UIView = {
        let touch = UIView()
        touch.backgroundColor = .green
        touch.translatesAutoresizingMaskIntoConstraints = false
        return touch
    }()
    
    private lazy var panGestureRecognizer: UIPanGestureRecognizer = UIPanGestureRecognizer(
        target: self,
        action: #selector(touchViewDidSlide(_:))
    )
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(numLabel)
        view.addSubview(touchView)
        setupNumLabel()
        setupTouchView()
        touchView.addGestureRecognizer(panGestureRecognizer)
    }
    
    func setupNumLabel() {
        
        numLabel.topAnchor.constraint(
            equalTo: view.topAnchor,
            constant: 30
       ).isActive = true
        
        numLabel.centerXAnchor.constraint(
            equalTo: view.centerXAnchor
        ).isActive = true
        
        numLabel.heightAnchor.constraint(
            equalToConstant: 30
        ).isActive = true
        
    }
    
    func setupTouchView() {
        
       touchView.topAnchor.constraint(
            equalTo: numLabel.bottomAnchor,
            constant: 40
       ).isActive = true
        
        touchView.centerXAnchor.constraint(
            equalTo: view.centerXAnchor
        ).isActive = true
        
        touchView.heightAnchor.constraint(
            equalToConstant: 200
        ).isActive = true
        
        touchView.widthAnchor.constraint(
            equalToConstant: 300
        ).isActive = true
    }
    
    @objc func touchViewDidSlide(_ sender: UIPanGestureRecognizer) {
        switch sender.state {
        case .began:
            print("began")
            
        case .changed:
            cnt = lastTranslation - sender.translation(in: touchView).y
            
        case .ended:
            lastTranslation = sender.translation(in: touchView).y
            numLabel.text = "\(cnt)"
            
        default: break
        }
    }
}
