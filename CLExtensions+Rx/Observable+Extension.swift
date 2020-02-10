//
//  Observable+Extension.swift
//  LockTools
//
//  Created by Cain Luo on 2019/11/8.
//  Copyright © 2019 Cain Luo. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

extension SharedSequenceConvertibleType {
    public func mapToVoid() -> SharedSequence<SharingStrategy, Void> {
        return map { _ in }
    }
}

extension ObservableType {
    public func asDriverOnErrorJustComplete() -> Driver<Element> {
        return asDriver { error in
            return Driver.empty()
        }
    }
    
    public func mapToVoid() -> Observable<Void> {
        return map { _ in }
    }
}

extension ObservableType {
    public func mapConst<U>(_ value: U) -> Observable<U> {
        return map { _ in value}
    }
}
