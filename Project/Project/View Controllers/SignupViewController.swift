//
//  SignupViewController.swift
//  Project
//
//  Created by ELFILIAN on 2021/02/21.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet var FirstNameTextField: UITextField!
    
    @IBOutlet var LastNameTextField: UITextField!
    
    @IBOutlet var EmailTextField: UITextField!
    
    @IBOutlet var PasswordTextField: UITextField!
    
    @IBOutlet var SignUpButton: UIButton!
    
    @IBOutlet var ErrorLable: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
        
    }
    func setUpElements() {
        
        // Hide the error Label
        ErrorLable.alpha = 0
        
        // Style the elements
        Utilities.styleTextField(FirstNameTextField)
        Utilities.styleTextField(LastNameTextField)
        Utilities.styleTextField(EmailTextField)
        Utilities.styleTextField(PasswordTextField)
        Utilities.styleFilledButton(SignUpButton)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func SignUpTapped(_ sender: Any) {
    }
    
    
    
}
