//
//  SecondViewViewController.swift
//  xx
//
//  Created by Yan Cheng Cheok on 10/07/2024.
//

import UIKit

class SecondViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func bye(_ sender: Any) {
        performSegue(withIdentifier: "unwindFromDueDateTime", sender: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
