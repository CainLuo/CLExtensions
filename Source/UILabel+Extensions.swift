//
//  UILabel+Extensions.swift
//  CLExtensions
//
//  Created by CainLuo on 2019/9/14.
//  Copyright © 2019年 CainLuo. All rights reserved.
//

import UIKit

@IBDesignable open class IBDesignableLabel: UILabel {
    
    @IBInspectable var tipsImage: UIImage = UIImage()
    @IBInspectable var isPrefix: Bool = true

    override func draw(_ rect: CGRect) {
        if let text = text {
            let iconRect = CGRect(x: 0,
                                  y: UIScreen.fitPlusScreen(value: -8),
                                  width: UIScreen.fitPlusScreen(value: 50),
                                  height: UIScreen.fitPlusScreen(value: 50))

            attributedText = NSMutableAttributedString.drawImageInAttributedString(content: text,
                                                                                   image: tipsImage,
                                                                                   bounds: iconRect,
                                                                                   isPrefix: isPrefix)
        }
        
        super.draw(rect)
    }
}

extension UILabel {
    @IBInspectable public var fitFont: CGFloat {
        set {
            font = UIFont.systemFont(ofSize: UIScreen.fitScreen(value: newValue))
        }
        get {
            return font.pointSize
        }
    }
    
    @IBInspectable public var fitPlusFont: CGFloat {
        set {
            font = UIFont.systemFont(ofSize: UIScreen.fitPlusScreen(value: newValue))
        }
        get {
            return font.pointSize
        }
    }
    
    @IBInspectable public var fitBoldFont: CGFloat {
        set {
            font = UIFont.boldSystemFont(ofSize: UIScreen.fitScreen(value: newValue))
        }
        get {
            return font.pointSize
        }
    }
    
    @IBInspectable public var fitPlusBoldFont: CGFloat {
        set {
            font = UIFont.boldSystemFont(ofSize: UIScreen.fitPlusScreen(value: newValue))
        }
        get {
            return font.pointSize
        }
    }
}
