//
//  ViewController.swift
//  Swift5Keybord1
//
//  Created by 木村友紀 on 2020/04/19.
//  Copyright © 2020 木村友紀. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        userNameTextField.delegate = self
        passWordTextField.delegate = self
        
    }

    @IBAction func login(_ sender: Any) {
        logoImageView.image=UIImage(named:"loginOK")
        
        userNameLabel.text = userNameTextField.text
        passwordLabel.text=passWordTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // リターンキーを押した時にキーボードが閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // キーボードが閉じる
        textField.resignFirstResponder()
        return true
    }
    
}

