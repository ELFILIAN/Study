//
//  ViewController.swift
//  Tab
//
//  Created by ELFILIAN on 2021/01/06.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnMoveImageView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
    @IBAction func btnMoveDatePickerBiew(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
}

