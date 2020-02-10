//
//  RxViewModel.swift
//  Example
//
//  Created by Cain Luo on 2020/2/10.
//  Copyright © 2020 Cain Luo. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import CLExtensions

protocol RxViewModelInputs {
    var textField: AnyObserver<String> { get }
}

protocol RxViewModelOutputs {
    var canSubmit: Driver<Bool> { get }
}

protocol RxViewModelTypes {
    var inputs: RxViewModelInputs { get }
    var outputs: RxViewModelOutputs { get }
}

class RxViewModel: RxViewModelInputs, RxViewModelOutputs, RxViewModelTypes {
    
    init() {

        let canSubmit = textFieldSubject.map { $0.count > 0 }
            .startWith(false)
            .distinctUntilChanged()
        
        // inputs
        self.textField = textFieldSubject.asObserver()
        
        // outputs
        self.canSubmit = canSubmit.asDriverOnErrorJustComplete()
    }
    
    // MARK: subjects
    let textFieldSubject = BehaviorSubject<String>(value: "")
    
    // MARK: inputs
    let textField: AnyObserver<String>

    // MARK: outputs
    let canSubmit: Driver<Bool>

    var inputs: RxViewModelInputs { return self }
    var outputs: RxViewModelOutputs { return self }
}

