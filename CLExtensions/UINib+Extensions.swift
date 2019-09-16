//
//  UINib+Extensions.swift
//  CLExtensions
//
//  Created by CainLuo on 2019/9/14.
//  Copyright © 2019年 CainLuo. All rights reserved.
//

import UIKit

extension UINib {
    public class func createViewForm(nibName: String, identifier: String? = nil) -> UIView {
        var bundle = Bundle.main
        
        if let identifier = identifier,
           let bundleIdentifier = Bundle(identifier: identifier) {
            bundle = bundleIdentifier
        }
        
        return UINib(nibName: nibName, bundle: bundle).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
}
