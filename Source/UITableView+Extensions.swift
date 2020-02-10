//
//  UITableView+Extensions.swift
//  CLExtensions
//
//  Created by CainLuo on 2019/9/14.
//  Copyright © 2019年 CainLuo. All rights reserved.
//

import UIKit

extension UITableView {
    @IBInspectable public var cellHeight: CGFloat {
        set {
            rowHeight = newValue
        }
        get {
            return self.cellHeight
        }
    }
    
    public func register(nibName: String, inBundle bundle: Bundle? = nil) {
        self.register(UINib(nibName: nibName, bundle: bundle),
                      forCellReuseIdentifier: nibName)
    }
    
    public func registerHeaderFooterView(nibName: String, inBundle bundle: Bundle? = nil) {
        self.register(UINib(nibName: nibName, bundle: bundle),
                      forHeaderFooterViewReuseIdentifier: nibName)
    }
    
    public func hideEmptyCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
