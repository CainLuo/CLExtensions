//
//  ViewController.swift
//  Example
//
//  Created by Cain Luo on 2020/2/10.
//  Copyright © 2020 Cain Luo. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import CLExtensions

class ViewController: UIViewController {

    private let disposeBag = DisposeBag()
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var loginButton: IBDesignableButton!
    
    private let viewModel: RxViewModelTypes = RxViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func bindViewModel() {
        userTextField.rx.text.orEmpty
            .bind(to: viewModel.inputs.textField)
            .disposed(by: disposeBag)
        
        viewModel.outputs.canSubmit
            .drive(loginButton.rx.canSubmit)
            .disposed(by: disposeBag)
    }
}
