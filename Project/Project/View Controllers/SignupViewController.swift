 //
//  SignupViewController.swift
//  Project
//
//  Created by ELFILIAN on 2021/02/21.
//

import UIKit
import FirebaseAuth
import Firebase


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
    func validateFields() -> String? {
        
        // Check that all fields are filled in
        if FirstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || LastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            EmailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            PasswordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Please fill in all fields"
        }
        
        // Check if the password is secure
        let cleandPassword = PasswordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleandPassword) == false {
            // Password isn't secure enough
            return "Please make sure your password is at least 8 characters, contains a special character and a number"
        }
        
        return nil
    }

    @IBAction func SignUpTapped(_ sender: Any) {
        
        // Validate the fields
        let error = validateFields()
        
            if error != nil {
            // There's something wrong with the fields, show error message
            showError(error!)
        }
        else {
            
        // Create cleaned version of the data
            let FirstName = FirstNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let LastName = LastNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let Email = EmailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let Password = PasswordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // Create the user
            Auth.auth().createUser(withEmail: Email, password: Password) { (result, err) in
                
                // Check for errors
                if err != nil {
                    
                    // There was an error creating the user
                    self.showError("Error creating user")
                }
                else {
                    
                    // User was created successfullt, now store the first name and last name
                    let db = Firestore.firestore()
                    
                    db.collection("users").addDocument(data: ["FirstName":FirstName, "LastName":LastName, "UID": result!.user.uid]) { (error) in
                        
                        if error != nil {
                            // Show error message
                            self.showError("Error saving user data")
                        }
                    }
                    
                // Transition to the home screen
                    self.transitionToHome()
                    
                }
            }

            
        }
    }
    
    func showError(_ message:String) {

        ErrorLable.text = message
        ErrorLable.alpha = 1
        
    }
    
    func transitionToHome(){
        let homeViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
    }
    
}
