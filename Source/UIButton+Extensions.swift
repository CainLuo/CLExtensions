//
//  UIButton+Extensions.swift
//  CLExtensions
//
//  Created by CainLuo on 2019/9/14.
//  Copyright © 2019年 CainLuo. All rights reserved.
//

import UIKit

@IBDesignable open class IBDesignableButton: UIButton {

    enum TitleLabelStyle: Int {
        case top = 0
        case left = 1
        case bottom = 2
        case right = 3
    }
    
    @IBInspectable var borderColor: UIColor = .clear
    @IBInspectable var borderWidth: CGFloat = 0.0
    @IBInspectable var cornerRadius: CGFloat = 0.0
    @IBInspectable var leftPadding: CGFloat = 0.0
    @IBInspectable var rightPadding: CGFloat = 0.0
    @IBInspectable var labelSpacing: CGFloat = UIScreen.fitPlusScreen(value: 15)
    @IBInspectable var resetEdge: Bool = false
    @IBInspectable var titleLabelStyle: Int = TitleLabelStyle.right.rawValue

    public override func draw(_ rect: CGRect) {
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
        layer.cornerRadius = cornerRadius
        
        contentEdgeInsets = UIEdgeInsets(top: 0, left: leftPadding, bottom: 0, right: rightPadding)
        
        titleLabel?.lineBreakMode = .byWordWrapping
        titleLabel?.numberOfLines = numberOfLines
        
        clipsToBounds = true
        
        if resetEdge {
            resetTitleLabelAndImageEdge()
        }
        
        super.draw(rect)
    }
    
    @IBInspectable public var commitColor: UIColor = UIColor.black
    @IBInspectable public var disableColor: UIColor = UIColor.gray
    @IBInspectable public var canSubmit: Bool = false {
        didSet {
            isEnabled = canSubmit
            backgroundColor = canSubmit ? commitColor : disableColor
        }
    }
    
    private func resetTitleLabelAndImageEdge() {
        guard let titleLabel = titleLabel, let text = titleLabel.text, let font = titleLabel.font else { return }
        
        let titleSize = text.size(withAttributes: [.font: font])
        let imageSize = self.imageRect(forContentRect: self.frame)
         
        var titleInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        var imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
         
        switch (titleLabelStyle) {
        case TitleLabelStyle.top.rawValue://.top:
            titleInsets = UIEdgeInsets(top: -(imageSize.height + titleSize.height + labelSpacing), left: -(imageSize.width), bottom: 0, right: 0)
            imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -titleSize.width)
        case TitleLabelStyle.left.rawValue://.left:
            titleInsets = UIEdgeInsets(top: 0, left: -(imageSize.width * 2), bottom: 0, right: 0)
            imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -(titleSize.width * 2 + labelSpacing))
        case TitleLabelStyle.bottom.rawValue://.bottom:
            titleInsets = UIEdgeInsets(top: (imageSize.height + titleSize.height + labelSpacing), left: -(imageSize.width), bottom: 0, right: 0)
            imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -titleSize.width)
        case TitleLabelStyle.right.rawValue://.right:
            titleInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -labelSpacing)
        default:
            break
        }
         
        self.titleEdgeInsets = titleInsets
        self.imageEdgeInsets = imageInsets
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
