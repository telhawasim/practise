//
//  SignInViewController.swift
//  Practiise
//
//  Created by Telha Wasim on 22/10/2023.
//

import UIKit

class SignInViewController: UIViewController {

    //MARK: - OUTLETS -
    @IBOutlet weak var txtMobileNumber: UITextField!
    @IBOutlet weak var btnSignIn: UIButton!
    
    //MARK: - VARIABLES -
    var isPhoneValid = false {
        didSet {
            self.configureButton(isEnabled: self.isPhoneValid)
        }
    }
    
    //MARK: - LIFECYCLE -
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
}

//MARK: - FUNCTIONS -
extension SignInViewController {
    
    //MARK: - SETUP FOR FIRST TIME -
    func setup() {
        self.setupTextField()
        self.configureButton(isEnabled: self.isPhoneValid)
    }
    
    //MARK: - SETUP TEXTFIELD -
    func setupTextField() {
        self.txtMobileNumber.delegate = self
        self.txtMobileNumber.tintColor = UIColor.white
        self.txtMobileNumber.attributedPlaceHolder(string: "Mobile Number")
        self.txtMobileNumber.addTarget(self, action: #selector(changesInTextField), for: .editingChanged)
    }
    
    //MARK: - CONFIGURE BUTTON -
    func configureButton(isEnabled: Bool) {
        if isEnabled {
            self.btnSignIn.backgroundColor = HelperClass.shared.colorFromHex(ColorConstants.appGreen)
        } else {
            self.btnSignIn.backgroundColor = UIColor.lightGray
        }
        
        self.btnSignIn.isEnabled = isEnabled
    }
    
    //MARK: - FOR ANY CHANGE IN TEXTFIELD -
    @objc func changesInTextField() {
        if txtMobileNumber.text?.count == 11 {
            self.isPhoneValid = true
        } else {
            self.isPhoneValid = false
        }
    }
}

//MARK: - TEXTFIELD DELEGATE METHODS -
extension SignInViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text ?? ""
        let prospectiveText = (currentText as NSString).replacingCharacters(in: range, with: string)
        
        let maxLength = 11
        return prospectiveText.count <= maxLength
    }
}
