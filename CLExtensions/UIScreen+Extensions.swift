//
//  UIScreen+Extensions.swift
//  CLExtensions
//
//  Created by CainLuo on 2019/9/14.
//  Copyright © 2019年 CainLuo. All rights reserved.
//

import UIKit

public func KScaleHorizontal(_ c: CGFloat) -> CGFloat {
    return UIScreen.main.bounds.width / 414 * c
}

public func KScaleVertical(_ c: CGFloat) -> CGFloat {
    return UIScreen.main.bounds.width / 736 * c
}

extension UIScreen {
    public var screenWidth: CGFloat {
        return screenSize.width
    }
    
    public var screenHeight: CGFloat {
        return screenSize.height
    }
    
    public var screenSize: CGSize {
        return self.bounds.size
    }
}