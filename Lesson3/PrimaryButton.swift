//
//  PrimaryButton.swift
//  Lesson3
//
//  Created by Guest User on 10.12.2020.
//

import UIKit
import Foundation

@IBDesignable
class PrimaryButton : UIButton {
    
        @IBInspectable var borderWidth: CGFloat {
            set { layer.borderWidth = newValue }
            get { return layer.borderWidth }
        }
    
        @IBInspectable var cornerRadius: CGFloat {
            set { layer.cornerRadius = newValue }
            get { return layer.cornerRadius  }
        }
}
