//
//  ViewController.swift
//  Project
//
//  Created by ELFILIAN on 2021/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var SignUpButton: UIButton!
    
    @IBOutlet var LoginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUpElements()
    }
    
    func setUpElements() {
    
        Utilities.styleFilledButton(SignUpButton)
        Utilities.styleFilledButton(LoginButton)
    }

}

