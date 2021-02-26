//
//  LoginViewController.swift
//  Project
//
//  Created by ELFILIAN on 2021/02/21.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet var EmailTextField: UITextField!
    
    @IBOutlet var PasswordTextField: UITextField!
    
    @IBOutlet var LoginButton: UIButton!
    
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
        Utilities.styleTextField(EmailTextField)
        Utilities.styleTextField(PasswordTextField)
        Utilities.styleFilledButton(LoginButton)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func LoginTapped(_ sender: Any) {
        
        // Validate Text Fields
        
        // Signing in the user
        //Auth.auth().signIn(with: <#T##AuthCredential#>, completion: <#T##((AuthDataResult?, Error?) -> Void)?##((AuthDataResult?, Error?) -> Void)?##(AuthDataResult?, Error?) -> Void#>)
        
    }
}
