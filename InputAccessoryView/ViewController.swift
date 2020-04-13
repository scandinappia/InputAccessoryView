//
//  ViewController.swift
//  InputAccessoryView
//
//  Created by scandinappia@gmail.com on 2020-04-13.
//  Copyright © 2020 scandinappia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.textField1.inputAccessoryView = InputAccessoryView(items: [.flexibleSpace, .next, .done], textField: self.textField1, delegate: self)
        self.textField2.inputAccessoryView = InputAccessoryView(items: [.flexibleSpace, .previous, .next, .done], textField: self.textField2, delegate: self)
        self.textField3.inputAccessoryView = InputAccessoryView(items: [.flexibleSpace, .previous, .returnItem], textField: self.textField3, delegate: self)
        self.textField1.becomeFirstResponder()
    }
}

extension ViewController: InputAccessoryViewDelegate {

    func didTapPreviousButton(_ sender: UITextField) {
        switch sender {
        case self.textField2:
            self.textField1.becomeFirstResponder()
        case self.textField3:
            self.textField2.becomeFirstResponder()
        default:
            break
        }
    }

    func didTapNextButton(_ sender: UITextField) {
        switch sender {
        case self.textField1:
            self.textField2.becomeFirstResponder()
        case self.textField2:
            self.textField3.becomeFirstResponder()
        default:
            break
        }
    }

    func didTapDoneButton(_ sender: UITextField) {
        sender.resignFirstResponder()
    }

    func didTapReturnButton(_ sender: UITextField) {
        self.performSegue(withIdentifier: "goToNextVC", sender: self)
    }
}
