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
    @IBInspectable var cornerRadius: CGFloat = 0.0
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
    
    @IBInspectable var commitColor: UIColor = UIColor.black
    @IBInspectable var disableColor: UIColor = UIColor.gray
    @IBInspectable var canSubmit: Bool = false {
        didSet {
            isEnabled = canSubmit
            backgroundColor = canSubmit ? commitColor : disableColor
        }
    }
}

extension UIButton {
    @IBInspectable public var fitFont: CGFloat {
        set {
            titleLabel?.font = UIFont.systemFont(ofSize: UIScreen.fitScreen(value: newValue))
        }
        get {
            return titleLabel?.font.pointSize ?? 17
        }
    }
    
    @IBInspectable public var fitPlusFont: CGFloat {
        set {
            titleLabel?.font = UIFont.systemFont(ofSize: UIScreen.fitPlusScreen(value: newValue))
        }
        get {
            return titleLabel?.font.pointSize ?? 17
        }
    }
    
    @IBInspectable public var fitBoldFont: CGFloat {
        set {
            titleLabel?.font = UIFont.boldSystemFont(ofSize: UIScreen.fitScreen(value: newValue))
        }
        get {
            return titleLabel?.font.pointSize ?? 17
        }
    }
    
    @IBInspectable public var fitPlusBoldFont: CGFloat {
        set {
            titleLabel?.font = UIFont.boldSystemFont(ofSize: UIScreen.fitPlusScreen(value: newValue))
        }
        get {
            return titleLabel?.font.pointSize ?? 17
        }
    }
    
    @IBInspectable public var numberOfLines: Int {
        set {
            titleLabel?.numberOfLines = newValue
        }
        get {
            return self.titleLabel?.numberOfLines ?? 1
        }
    }
    
    @IBInspectable public var adjustsFontSizeToFitWidth: Bool {
        set {
            titleLabel?.adjustsFontSizeToFitWidth = newValue
        }
        get {
            return self.titleLabel?.adjustsFontSizeToFitWidth ?? false
        }
    }
}
