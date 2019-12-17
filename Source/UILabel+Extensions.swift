//
//  UILabel+Extensions.swift
//  CLExtensions
//
//  Created by CainLuo on 2019/9/14.
//  Copyright © 2019年 CainLuo. All rights reserved.
//

import UIKit

public extension UILabel {
    @IBInspectable var fitFont: CGFloat {
        set {
            font = UIFont.systemFont(ofSize: UIScreen.fitScreen(value: newValue))
        }
        get {
            return font.pointSize
        }
    }
    
    @IBInspectable var fitPlusFont: CGFloat {
        set {
            font = UIFont.systemFont(ofSize: UIScreen.fitPlusScreen(value: newValue))
        }
        get {
            return font.pointSize
        }
    }
}
