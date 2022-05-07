//
//  ButtonClass.swift
//  LoanCalc
//
//  Created by Reza Enayati on 4/29/22.
//

//Back 

import Foundation
import UIKit

//MARK: -  Custom UI-Button
@IBDesignable
class UICustomButton: UIButton {
    
    // button corner radius
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    // button border colors
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    // button border width
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    public override class var layerClass: AnyClass {
        CAGradientLayer.self
    }
    
    private var gradientLayer: CAGradientLayer {
        layer as! CAGradientLayer
    }
    // button start color gradient
    @IBInspectable public var startColor: UIColor = .white {
        didSet {
            updateColors()
        }
    }
    
    // button end color gradient
    @IBInspectable public var endColor: UIColor = .red {
        didSet {
            updateColors()
        }
    }
    
    // button start point gradient
    @IBInspectable public var startPoint: CGPoint {
        get {
            gradientLayer.startPoint
        }
        
        set {
            gradientLayer.startPoint = newValue
        }
    }
    
    // button end point gradient
    @IBInspectable public var endPoint: CGPoint {
        get {
            gradientLayer.endPoint
        }
        set {
            gradientLayer.endPoint = newValue
        }
    }
    
    // update colores gradient
    private func updateColors() {
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
    }
}

//MARK: -  Custom UI-Color & TextFieldAppearance. 

extension UIColor {
    static let darkGreen = UIColor(red: 0.08, green: 0.39, blue: 0.34, alpha: 1.00)
    static let lightGreen = UIColor(red: 0.89, green: 0.94, blue: 0.91, alpha: 1.00)
    static let backgroun = UIColor(red: 0.90, green: 0.90, blue: 0.90, alpha: 1.00)
}

extension UIViewController {
    
    func setTextFiledAppearance(textField: UITextField){
        textField.backgroundColor = UIColor.lightGreen
        textField.backgroundColor = UIColor.lightGreen
        
        textField.layer.borderColor = UIColor.darkGreen.cgColor
        textField.layer.borderColor = UIColor.darkGreen.cgColor
        textField.layer.borderWidth = 1.0
        textField.layer.borderWidth = 1.0
        
        textField.layer.cornerRadius = 5.0
        textField.layer.cornerRadius = 5.0
        
        textField.textColor = UIColor.darkGreen
    }
    
    func setLabelAppreance(label: UILabel){
        label.backgroundColor = UIColor.lightGreen
        label.layer.cornerRadius = 5.0
        
        label.textColor = UIColor.darkGreen
        
    }
    
    
}

