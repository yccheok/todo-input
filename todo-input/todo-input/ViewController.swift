//
//  ViewController.swift
//  todo-input
//
//  Created by Yan Cheng Cheok on 10/07/2024.
//

import UIKit

class ViewController: UIViewController {
    override var inputAccessoryView: UIView? {
        get {
            _inputAccessoryView
        }
    }

    override var canBecomeFirstResponder: Bool {
        return _canBecomeFirstResponder
    }
    
    private var _inputAccessoryView: UIView? = nil
    private var _canBecomeFirstResponder = false
    

    @IBAction func show(_ sender: Any) {
        let inputView = InputView.instanceFromNib()
        
        self._inputAccessoryView = inputView
        self._canBecomeFirstResponder = true
        
        becomeFirstResponder()
        
        DispatchQueue.main.async {
            // We have shown the inputView.
            // But, the keyboard is not yet visible.
            // Give up the focus ownership from this view controller.
            // InputView's text view should grab the focus ownership, and show the keyboard.
            self._inputAccessoryView = nil
            self._canBecomeFirstResponder = false
        }
    }
}

