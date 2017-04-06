//
//  FirstViewController.swift
//  ConditionalSegue
//
//  Created by Adrian Bolinger on 4/5/17.
//  Copyright © 2017 Adrian Bolinger. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // this sets the button to disabled...
        nextButton.isEnabled = false
        
        // this monitors the textField for the correct answer
        textField.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: .editingChanged)
    }
    
    // this is the method that monitors your textField
    func textFieldDidChange(textField: UITextField) {
        
        if textField.text != "42" {
            nextButton.isEnabled = false
        }
        
        else {
            nextButton.isEnabled = true
        }
    }

    
    /*
     I have a segue that I control+dragged to the SecondViewController. The moment the button is enabled, you can segue.
     */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

