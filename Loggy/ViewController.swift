//
//  ViewController.swift
//  Loggy
//
//  Created by 王資猛 on 2017/8/28.
//  Copyright © 2017年 王資猛. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

var ref: DatabaseReference!



class ViewController: UIViewController {
    @IBOutlet weak var signInSelector: UISegmentedControl!
    var ref: DatabaseReference!
    
    

    
    @IBOutlet weak var signInLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
  
    
    @IBOutlet weak var signInButton: UIButton!
    
      var isSignIn: Bool = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func signInSeletorChanged(_ sender: UISegmentedControl) {
        isSignIn = !isSignIn
        if isSignIn {
            signInLabel.text = "Sign In"
            signInButton.setTitle("Sign In", for: .normal)
        }
        else{
            signInLabel.text = "Register"
            signInButton.setTitle("Register", for: .normal)
        }
    }
    
    
    @IBAction func signInButtonTapped(_ sender: UIButton) {
        
        if let email = emailTextField.text,
        let pass = passwordTextField.text
        {
        
        if isSignIn {
            Auth.auth().signIn(withEmail: email, password: pass, completion: { (user, error) in
                if let u = user {
                    self.performSegue(withIdentifier: "goToHome", sender: self)
                    
                    
                }
                else {
                    
                }
            })
        }
        else {
            Auth.auth().createUser(withEmail: email, password: pass, completion: { (user, error) in
                
                if let u = user {
                     self.performSegue(withIdentifier: "goToHome", sender: self)
                    
                 
                    
                    
            
                    
                }
                else {
                    
                }
            })
        }
    }
    }
    
    
}

