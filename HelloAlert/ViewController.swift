//
//  ViewController.swift
//  HelloAlert
//
//  Created by Yuuki Nishiyama on 2019/02/10.
//  Copyright © 2019 Yuuki Nishiyama. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func pushedAlertButton(_ sender: UIButton) {

        let alert = UIAlertController(title: "This is title",
                                      message: "This is message",
                                      preferredStyle: .alert)

        let actionOk = UIAlertAction(title: "OK", style: .default) { (action) in
            // handle the button clicked event
        }

        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            // handle the button clicked event
        }

        let actionDelete = UIAlertAction(title: "Delete", style: .destructive) { (action) in
            // handle the button clicked event
        }

        alert.addAction(actionOk)
        alert.addAction(actionCancel)
        alert.addAction(actionDelete)

        self.present(alert, animated: true) {
            // handle the alert appeared event
        }
    }
    
    @IBAction func pushedActionSheetButton(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "This is title",
                                      message: "This is message",
                                      preferredStyle: .actionSheet)
        
        let actionOk = UIAlertAction(title: "OK", style: .default) { (action) in
            // handle the button clicked event
        }
        
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            // handle the button clicked event
        }
        
        let actionDelete = UIAlertAction(title: "Delete", style: .destructive) { (action) in
            // handle the button clicked event
        }
        
        alert.addAction(actionOk)
        alert.addAction(actionCancel)
        alert.addAction(actionDelete)
        
        self.present(alert, animated: true) {
            // handle the alert appeared event
        }
    }
    
    @IBAction func pushLoginButton(_ sender: UIButton){
        let controller = UIAlertController(title: "You need to login ",
                                           message: "Please add your user name and password.",
                                           preferredStyle: .alert)
        
        controller.addTextField { textField in
            textField.placeholder = "User Name or Email Address"
            textField.keyboardAppearance = .dark
        }
        controller.addTextField { textField in
            textField.placeholder = "Password"
            textField.isSecureTextEntry = true
            textField.keyboardAppearance = .dark
        }
        
        
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .cancel,
                                         handler: nil)
        
        let loginAction = UIAlertAction(title: "Login",
                                      style: .default) { action in
                                        if let account = controller.textFields?[0].text {
                                            print(account)
                                        }
                                        if let password = controller.textFields?[1].text{
                                            print(password)
                                        }
        }
        
        controller.addAction(cancelAction)
        controller.addAction(loginAction)
        
        self.present(controller, animated: true, completion: nil)
    }
    

}

