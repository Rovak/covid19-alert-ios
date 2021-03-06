//
//  RoundButton.swift
//  AnnotateImage
//
//  Created by David Lari on 11/21/17.
//  Copyright © 2017 David Lari. All rights reserved.
//
import UIKit

class RoundButton: UIButton {

    var shadowLayer: CAShapeLayer!

    var buttonBackgroundColor: UIColor? = UIColor.white
    override var backgroundColor: UIColor? {
        set {
            buttonBackgroundColor = newValue
        }

        get {
            return buttonBackgroundColor
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        imageView?.layer.cornerRadius = self.layer.cornerRadius
        layer.cornerRadius = 25
        layer.borderWidth = 1

        if shadowLayer == nil {
            shadowLayer = CAShapeLayer()
            shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: self.layer.cornerRadius).cgPath
            shadowLayer.fillColor = buttonBackgroundColor?.cgColor ?? UIColor.white.cgColor
            layer.insertSublayer(shadowLayer, at: 0)
        }
    }

}
