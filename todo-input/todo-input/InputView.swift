//
//  InputView.swift
//  todo-input
//
//  Created by Yan Cheng Cheok on 10/07/2024.
//

import UIKit

extension UIView {
    static func getUINib() -> UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    static func instanceFromNib() -> Self {
        return getUINib().instantiate(withOwner: self, options: nil)[0] as! Self
    }
}

class InputView: UIView {

    @IBOutlet weak var textView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        textView.inputAccessoryView = self
        
        DispatchQueue.main.async {
            self.textView.becomeFirstResponder()
        }
    }
    
    @IBAction func done(_ sender: Any) {
        textView.resignFirstResponder()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        let screenRect = UIScreen.main.bounds
        let screenWidth = screenRect.size.width
        
        self.translatesAutoresizingMaskIntoConstraints = true
        
        self.frame = CGRect(
            x: 0,
            y: 0,
            width: screenWidth,
            height: 250
        )
        
        self.clipsToBounds = true
        self.layer.cornerRadius = 16
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
}
