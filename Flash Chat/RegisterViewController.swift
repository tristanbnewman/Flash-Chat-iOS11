//
//  RegisterViewController.swift
//  Flash Chat
//
//  This is the View Controller which registers new users with Firebase
//

import UIKit
import Firebase


class RegisterViewController: UIViewController {

    
    //Pre-linked IBOutlets

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

  
    @IBAction func registerPressed(_ sender: AnyObject) {
        

        
        //TODO: Set up a new user on our Firbase database
        FIRAuth.auth()?.createUser(withEmail: emailTextfield!, password: passwordTextfield!,
                                   completion: {(user,err) in
                                    if err {
                                        print(err)
                                    }
                                    else{
                                        print("logged in")
                                        self.performSegue(withIdentifier: 'gotoLogin', sender: self)
                                    }
        })

        
        
    } 
    
    
}
