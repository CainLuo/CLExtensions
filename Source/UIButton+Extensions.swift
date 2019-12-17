//
//  UIButton+Extensions.swift
//  CLExtensions
//
//  Created by CainLuo on 2019/9/14.
//  Copyright © 2019年 CainLuo. All rights reserved.
//

import UIKit

@IBDesignable open class IBDesignableButton: UIButton {
    
    @IBInspectable var borderColor: UIColor = .clear
    @IBInspectable var borderWidth: CGFloat = 1.0
    @IBInspectable var cornerRadius: CGFloat = 8.0
    @IBInspectable var leftPadding: CGFloat = 0.0
    @IBInspectable var rightPadding: CGFloat = 0.0
    @IBInspectable var titleLines: Int = 1
    
    
    public override func draw(_ rect: CGRect) {
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
        layer.cornerRadius = cornerRadius
        
        contentEdgeInsets = UIEdgeInsets(top: 0, left: leftPadding, bottom: 0, right: rightPadding)
        
        titleLabel?.lineBreakMode = .byWordWrapping
        titleLabel?.numberOfLines = titleLines
        
        clipsToBounds = true
        
        super.draw(rect)
    }
    
    @IBInspectable var fitFont: CGFloat {
        set {
            titleLabel?.font = UIFont.systemFont(ofSize: UIScreen.fitScreen(value: newValue))
        }
        get {
            if let pointSize = titleLabel?.font.pointSize {
                return pointSize
            }
            return 17
        }
    }
    
    @IBInspectable var fitPlusFont: CGFloat {
        set {
            titleLabel?.font = UIFont.systemFont(ofSize: UIScreen.fitPlusScreen(value: newValue))
        }
        get {
            if let pointSize = titleLabel?.font.pointSize {
                return pointSize
            }
            return 17
        }
    }
}
