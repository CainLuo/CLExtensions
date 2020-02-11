//
//  IBDesignableButton.swift
//  CLExtensions
//
//  Created by Cain Luo on 2020/2/10.
//  Copyright © 2020 Cain Luo. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import CLExtensions

extension Reactive where Base: IBDesignableButton {
    public var canSubmit: Binder<Bool> {
        return Binder(self.base) { button, canSubmit in
            button.canSubmit = canSubmit
        }
    }
}
