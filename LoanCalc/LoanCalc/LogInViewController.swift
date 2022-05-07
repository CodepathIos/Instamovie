//
//  LogInViewController.swift
//  LoanCalc
//
//  Created by Saiman Tamang on 4/15/22.
//

// TODO - Loading Screen when fetching user name and password
// TODO - User Persistance

import UIKit
import Parse

class LogInViewController: UIViewController {
    //inputs from app
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Apearance
        usernameField.placeholder = "JohnDoe123"
        setTextFiledAppearance(textField: usernameField)
        setTextFiledAppearance(textField: passwordField)
        passwordField.placeholder = "Passsword123"
    }
    
    @IBAction func onLogIn(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
        // TODO - Error Handeling
        PFUser.logInWithUsername(inBackground: username, password: password) { (user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }
            else {
                print("Error: \(error?.localizedDescription ?? "Login Failed")")
            }
        }
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        // TODO - Error Handeling
        user.signUpInBackground { (success, error) in
            if success {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error: \(error?.localizedDescription ?? "Signup Failed")")
            }
        }
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
