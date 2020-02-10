//
//  UIKit+Extensions.swift
//  LockTools
//
//  Created by Cain Luo on 2019/12/5.
//  Copyright © 2019 Cain Luo. All rights reserved.
//

import Foundation
import UIKit
import Localize_Swift

extension UILabel {
    @IBInspectable public var localizedTag: String {
        set {
            text = newValue.localized()
        }
        get {
            return self.localizedTag.localized()
        }
    }
}

extension UITextField {
    @IBInspectable public var placeholderLocalized: String {
        set {
            placeholder = newValue.localized()
        }
        get {
            return self.placeholderLocalized.localized()
        }
    }
}

extension UIButton {
    @IBInspectable public var localizedTag: String {
        set {
            setTitle(newValue.localized(), for: self.state)
        }
        get {
            return self.localizedTag.localized()
        }
    }
}

extension UIViewController {
    @IBInspectable public var localizedTag: String {
        set {
            title = newValue.localized()
        }
        get {
            return self.localizedTag.localized()
        }
    }
}

extension UIBarButtonItem {
    @IBInspectable public var localizedTag: String {
        set {
            title = newValue.localized()
        }
        get {
            return self.localizedTag.localized()
        }
    }
}
