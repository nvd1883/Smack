//
//  GradientView.swift
//  Smack
//
//  Created by Nived Pradeep on 11/01/19.
//  Copyright © 2019 Nived Pradeep. All rights reserved.
//

import UIKit
@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColour : UIColor = #colorLiteral(red: 0.3137254902, green: 0.01176470588, blue: 0.8235294118, alpha: 1){
        didSet{
            self.setNeedsLayout()
        }
    }

    @IBInspectable var bottomColour : UIColor = #colorLiteral(red: 0.1960784314, green: 0.7529411765, blue: 0.8235294118, alpha: 1){
        didSet{
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColour.cgColor, bottomColour.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
