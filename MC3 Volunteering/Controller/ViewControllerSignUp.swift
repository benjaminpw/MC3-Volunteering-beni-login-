//
//  ViewControllerSignUp.swift
//  LoginPage
//
//  Created by Monica Khoe on 21/08/19.
//  Copyright © 2019 Monica Khoe. All rights reserved.
//

import UIKit

class ViewControllerSignUp: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet var userNameTF: UITextField!
    
    
    var userDef = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTF.setLeftImageSup(imageName: "name")
        emailTF.setLeftImageSup(imageName: "email")
        passwordTF.setLeftImageSup(imageName: "password")
        userNameTF.setLeftImageSup(imageName: "username")
        

        nameTF.delegate = self
        emailTF.delegate = self
        passwordTF.delegate = self
        
        _ = userDef.string(forKey: "email")
        
        _ = userDef.string(forKey: "name")
        
        _ = userDef.string(forKey: "password")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
        userDef.set(emailTF.text, forKey: "email")
    }
    
    @IBAction func closeButtonSignUpPage(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}

extension UITextField {
    func setLeftImageSup(imageName: String) {
        
        let imageView = UIImageView(frame: CGRect(x: 50, y: 50, width: 20, height: 20))
        imageView.image = UIImage(named: imageName)
        self.leftView = imageView;
        self.leftViewMode = .always
}
}
