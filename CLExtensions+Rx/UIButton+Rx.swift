//
//  UIButton+Rx.swift
//  LockTools
//
//  Created by Cain Luo on 2019/11/17.
//  Copyright © 2019 Cain Luo. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

extension Reactive where Base: UIButton {
    public var normalTitle: Binder<String> {
        return Binder(self.base) { button, title in
            button.setTitle(title, for: .normal)
        }
    }
    
    public var selectedTitle: Binder<String> {
        return Binder(self.base) { button, title in
            button.setTitle(title, for: .selected)
        }
    }
    
    public var highlightedTitle: Binder<String> {
        return Binder(self.base) { button, title in
            button.setTitle(title, for: .highlighted)
        }
    }
    
    public var disabledTitle: Binder<String> {
        return Binder(self.base) { button, title in
            button.setTitle(title, for: .disabled)
        }
    }
}
