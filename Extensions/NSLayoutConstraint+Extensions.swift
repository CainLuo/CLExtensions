//
//  NSLayoutConstraint+Extensions.swift
//  CLExtensions
//
//  Created by CainLuo on 2019/9/14.
//  Copyright © 2019年 CainLuo. All rights reserved.
//

import UIKit

private var horizontalKey = 100
private var verticalKey = 200

public extension NSLayoutConstraint {

    @IBInspectable var verticalConstant: CGFloat {
        set {
            constant = KScaleVertical(verticalConstant)
            objc_setAssociatedObject(self, &verticalKey, newValue, .OBJC_ASSOCIATION_ASSIGN)
        }
        get {
            if let vc = objc_getAssociatedObject(self, &verticalKey) as? CGFloat {
                return vc
            }
            return constant
        }
    }
    
    @IBInspectable var horizontalConstant: CGFloat {
        set {
            constant = KScaleHorizontal(horizontalConstant)
            objc_setAssociatedObject(self, &horizontalKey, newValue, .OBJC_ASSOCIATION_ASSIGN)
        }
        get {
            if let hc = objc_getAssociatedObject(self, &horizontalKey) as? CGFloat {
                return hc
            }
            return constant
        }
    }
}
