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

    // Check the fields and validate that the data is correct. If everithing is correct, this method returns nil. Otherwise, it returns the error message
    func valdateFields() -> String? {
        
        // Check that all fields are filled in
        if FirstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || LastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            EmailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            PasswordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Please fill in all fields"
        }
        
        // Check if the password is secure
        
        return nil
    }

    @IBAction func SignUpTapped(_ sender: Any) {
        
        // Validate the fields
        
        // Create the user
        
        // Transition to the home screen
    }
    
    
    
}
