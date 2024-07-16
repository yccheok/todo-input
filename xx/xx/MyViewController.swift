//
//  MyViewController.swift
//  xx
//
//  Created by Yan Cheng Cheok on 10/07/2024.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.keyboardLayoutGuide.usesBottomSafeArea = false
        
        textView.becomeFirstResponder()
        
        // Add this in the ViewDidLoad method
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.didTapView(sender:)))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc
    func didTapView(sender: UITapGestureRecognizer) {
        print(">>>> View Tapped")
        //textView.resignFirstResponder()
        
        self.view.isHidden = true
        dismiss(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidHide), name: UIResponder.keyboardDidHideNotification, object: nil)
    }

    //@objc func keyboardDidHide() {
        //Do something here
    //    print(">>>> keyboardDidHide")
    //    dismiss(animated: false)
    //}

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(">>>> viewDidAppear")
        
        super.viewDidAppear(animated)
        
        self.textView.becomeFirstResponder()
    }
    
    @IBAction func unwindFromDueDateTime(_ segue: UIStoryboardSegue) {
        print(">>>> unwindFromDueDateTime")

        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.textView.becomeFirstResponder()
        }
    }
}
