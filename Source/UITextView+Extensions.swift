//
//  UITextView+Extensions.swift
//  CLExtensions
//
//  Created by Cain Luo on 2019/12/17.
//  Copyright © 2019 CainLuo. All rights reserved.
//

import Foundation
import UIKit

extension UITextView {
    @IBInspectable var fitFont: CGFloat {
        set {
            font = UIFont.systemFont(ofSize: UIScreen.fitScreen(value: newValue))
        }
        get {
            if let pointSize = font?.pointSize {
                return pointSize
            }
            return 17
        }
    }
    
    @IBInspectable var fitPlusFont: CGFloat {
        set {
            font = UIFont.systemFont(ofSize: UIScreen.fitPlusScreen(value: newValue))
        }
        get {
            if let pointSize = font?.pointSize {
                return pointSize
            }
            return 17
        }
    }
}

private var maxLengths = [UITextView: Int]()
private var minLengths = [UITextView: Int]()

@IBDesignable open class IBDesignableTextView: UITextView, UITextViewDelegate {
    @IBInspectable public var minLength: Int {
        get {
            guard let length = minLengths[self] else {
                return 0
            }
            
            return length
        }
        set {
            minLengths[self] = newValue
        }
    }
    
    @IBInspectable public var maxLength: Int {
        get {
            guard let length = maxLengths[self] else {
                return Int.max
            }
            
            return length
        }
        set {
            maxLengths[self] = newValue
            delegate = self
        }
    }

    public func textViewDidChange(_ textView: UITextView) {
        if textView.text.count > maxLength,
            let text = textView.text {
            let startIndex = text.index(textView.text.startIndex, offsetBy: 0)
            let endIndex = text.index(textView.text.startIndex, offsetBy: maxLength)
            textView.text = String(text[startIndex ..< endIndex])
        }
    }
}

