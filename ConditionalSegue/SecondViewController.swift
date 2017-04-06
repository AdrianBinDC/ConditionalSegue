//
//  SecondViewController.swift
//  ConditionalSegue
//
//  Created by Adrian Bolinger on 4/5/17.
//  Copyright © 2017 Adrian Bolinger. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: "sample.jpg")
        imageView.contentMode = .scaleAspectFill
        imageView.alpha = 0.0
        
        UIView.animate(withDuration: 2.0,
                       delay: 2.0,
                       options: UIViewAnimationOptions.curveLinear,
                       animations: {
                        self.imageView.alpha = 1.0
        },
                       completion: nil)
    }

}
