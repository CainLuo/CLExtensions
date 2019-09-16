//
//  UILabel+Extensions.swift
//  CLExtensions
//
//  Created by CainLuo on 2019/9/14.
//  Copyright © 2019年 CainLuo. All rights reserved.
//

import UIKit

private var fitFontSizeKey = 300

public extension UILabel {
    @IBInspectable var fitFontSize: CGFloat {
        set {
            font = UIFont(name: font.fontName, size: KScaleHorizontal(fitFontSize))
            objc_setAssociatedObject(self, &fitFontSizeKey, newValue, .OBJC_ASSOCIATION_ASSIGN)
        }
        get {
            if let fs = objc_getAssociatedObject(self, &fitFontSizeKey) as? CGFloat {
                return fs
            }
            return font.pointSize
        }
    }
}
